import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:web_socket_channel/io.dart';

import 'package:tada_team_test/layers/domain/repositories/i_chat_room_repository.dart';
import 'package:tada_team_test/layers/domain/entities/outgoing_message.dart';
import 'package:tada_team_test/layers/domain/entities/incoming_message.dart';

@Singleton(as: IChatRoomsRepository)
class NaneChatRoomsRepository implements IChatRoomsRepository {
  static const _baseUrl = 'wss://nane.tada.team/ws?username=';  // actually this is a room name

  @override
  IChatRepository enterRoom({String roomName}) {
    return NaneChatRepository(
      roomName: roomName,
      channel: IOWebSocketChannel.connect('$_baseUrl$roomName'),
    );
  }
}

class NaneChatRepository implements IChatRepository {
  final IOWebSocketChannel channel;
  final String roomName;

  const NaneChatRepository({
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
        id: '777',
        room: roomName,
        text: text,
      ).toJson(),
    );
    print('Nane sendMessage $data');
    channel.sink.add(data);
  }
}
