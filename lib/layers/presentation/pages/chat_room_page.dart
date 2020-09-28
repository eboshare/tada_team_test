import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:tada_team_test/injection/injection.dart';
import 'package:tada_team_test/helper/constants.dart';
import 'package:tada_team_test/layers/domain/entities/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/room.dart';
import 'package:tada_team_test/layers/domain/stores/i_chat_room_store.dart';
import 'package:tada_team_test/layers/presentation/components/chat_text_field.dart';
import 'package:tada_team_test/layers/presentation/components/error_placeholder.dart';
import 'package:tada_team_test/layers/presentation/components/incoming_message_tile.dart';
import 'package:tada_team_test/layers/presentation/components/outgonig_message_tile.dart';

const _username = 'CodeKiller228';

class ChatRoomPage extends StatefulWidget {
  final Room room;

  const ChatRoomPage({
    Key key,
    this.room,
  }) : super(key: key);

  @override
  _ChatRoomPageState createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {
  final IChatRoomStore store = getIt();

  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    store.enterRoom(roomName: 'kozma', username: _username);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    store.leaveRoom();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.room.name,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Observer(
                builder: (context) {
                  switch (store.status) {
                    case LoadingStatus.loading:
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    case LoadingStatus.error:
                      return ErrorPlaceholder();
                    case LoadingStatus.success:
                      return ListView.separated(
                        controller: _scrollController,
                        itemCount: store.history.length,
                        padding: const EdgeInsets.all(10),
                        separatorBuilder: (_, __) => const SizedBox(height: 15),
                        itemBuilder: (context, index) {
                          final message = store.history[index];
                          if (_isMyMessage(_username, message)) {
                            return OutgoingMessageTile(message: message);
                          } else {
                            return IncomingMessageTile(message: message);
                          }
                        },
                      );
                  }
                  throw Exception('An unhandled LoadingStatus case: ${store.status}');
                },
              ),
            ),
            ChatTextField(
              onSubmitted: (text) {
                store.sendMessage(text);
                _scrollController.jumpTo(
                  _scrollController.position.maxScrollExtent,
                );
              },
            )
          ],
        ),
      ),
    );
  }

  bool _isMyMessage(String myUsername, IncomingMessage message) {
    return myUsername == message.sender.username;
  }
}
