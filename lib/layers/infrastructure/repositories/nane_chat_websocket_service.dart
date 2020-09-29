import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/io.dart';

import 'package:tada_team_test/layers/domain/repositories/i_chat_service.dart';
import 'package:tada_team_test/layers/domain/entities/outgoing_message/outgoing_message.dart';
import 'package:tada_team_test/layers/domain/entities/incoming_message/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/room/room.dart';
import 'package:tada_team_test/layers/domain/entities/settings/settings.dart';

final uuid = Uuid();

@Singleton(as: IChatService)
class NaneChatService implements IChatService {
  final Map<String, List<OnMessage>> _listeners = {};

  IOWebSocketChannel _channel;
  StreamSubscription _subscription;

  String _constructWebSocketUri({String username}) {
    return Uri(
      scheme: 'wss',
      host: 'nane.tada.team',
      path: '/ws',
      queryParameters: {'username': username},
    ).toString();
  }

  void _listenManager(data) {
    final message = IncomingMessage.fromJson(jsonDecode(data));
    if (_listeners.containsKey(message.roomName)) {
      for (final listener in _listeners[message.roomName]) {
        listener(message);
      }
    }
  }

  @override
  void init(String username) {
    _channel = IOWebSocketChannel.connect(
      _constructWebSocketUri(username: username),
    );
    _subscription = _channel.stream.listen(_listenManager);
  }

  @override
  void close() {
    _channel.sink.close();
    _subscription.cancel();
  }

  @override
  IChatRoom enterRoom({String roomName, String username}) {
    return NaneChatRoom(roomName: roomName, service: this);
  }

  @override
  void leaveRoom(String roomName) {
    _listeners.remove(roomName);
  }

  @override
  void sendMessage(OutgoingMessage message) {
    final data = jsonEncode(message.toJson());
    _channel.sink.add(data);
  }

  @override
  void addListener(String roomName, OnMessage onMessage) {
    if (!_listeners.containsKey(roomName)) {
      _listeners[roomName] = [onMessage];
    } else {
      _listeners[roomName].add(onMessage);
    }
  }

  @override
  void removeListener(String roomName, OnMessage onMessage) {
    if (_listeners.containsKey(roomName)) {
      _listeners[roomName].removeWhere((listener) => listener == onMessage);
    }
  }
}

class NaneChatRoom implements IChatRoom {
  final String roomName;
  final NaneChatService service;

  NaneChatRoom({
    @required this.service,
    @required this.roomName,
  });

  @override
  void listenToMessages(OnMessage onMessage) {
    service.addListener(roomName, onMessage);
  }

  @override
  void leaveRoom() {
    service.leaveRoom(roomName);
  }

  @override
  void sendMessage(String text) {
    service.sendMessage(
      OutgoingMessage(
        id: uuid.v4(),
        roomName: roomName,
        text: text,
      ),
    );
  }
}
