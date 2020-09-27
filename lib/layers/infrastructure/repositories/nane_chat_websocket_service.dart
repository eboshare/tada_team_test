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
  IChat enterRoom({String roomName, String username}) {
    return NaneChat(
      roomName: roomName,
      channel: IOWebSocketChannel.connect(
        _constructWebSocketUri(username: username),
      ),
    );
  }
}

class NaneChat implements IChat {
  final IOWebSocketChannel channel;
  final String roomName;

  const NaneChat({
    @required this.channel,
    @required this.roomName,
  });

  @override
  void close() {
    channel.sink.close();
  }

  @override
  void listenToMessages(void Function(IncomingMessage message) onMessage) {
    channel.stream.listen(
      (str) => onMessage(
        IncomingMessage.fromJson(jsonDecode(str)),
      ),
    );
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
