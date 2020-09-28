import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/io.dart';

import 'package:tada_team_test/layers/domain/repositories/i_chat_service.dart';
import 'package:tada_team_test/layers/domain/entities/outgoing_message.dart';
import 'package:tada_team_test/layers/domain/entities/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/room.dart';
import 'package:tada_team_test/layers/domain/entities/settings.dart';

final uuid = Uuid();

@Singleton(as: IChatService)
class NaneChatService implements IChatService {
  String _constructWebSocketUri({String username}) {
    return Uri(
      scheme: 'wss',
      host: 'nane.tada.team',
      path: '/ws',
      queryParameters: {'username': username},
    ).toString();
  }

  @override
  IChatRoom enterRoom({String roomName, String username}) {
    return NaneChatRoom(
      roomName: roomName,
      channel: IOWebSocketChannel.connect(
        _constructWebSocketUri(username: username),
      ),
    );
  }
}

class NaneChatRoom implements IChatRoom {
  final IOWebSocketChannel channel;
  final String roomName;
  final List<StreamSubscription> _subscriptions = [];

  NaneChatRoom({
    @required this.channel,
    @required this.roomName,
  });

  @override
  void leaveRoom() {
    channel.sink.close();
    for (final subscription in _subscriptions) {
      subscription.cancel();
    }
  }

  @override
  void listenToMessages(void Function(IncomingMessage message) onMessage) {
    final subscription = channel.stream.listen(
      (str) => onMessage(
        IncomingMessage.fromJson(jsonDecode(str)),
      ),
    );
    _subscriptions.add(subscription);
  }

  @override
  void sendMessage(String text) {
    final data = jsonEncode(
      OutgoingMessage(
        id: uuid.v4(),
        room: roomName,
        text: text,
      ).toJson(),
    );
    channel.sink.add(data);
  }
}
