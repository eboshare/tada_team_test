import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tada_team_test/generated/l10n.dart';

import 'package:tada_team_test/injection/injection.dart';
import 'package:tada_team_test/helper/extensions.dart';
import 'package:tada_team_test/helper/constants.dart';
import 'package:tada_team_test/layers/domain/entities/incoming_message/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/room/room.dart';
import 'package:tada_team_test/layers/domain/filtering/chat_room_filtering.dart';
import 'package:tada_team_test/layers/domain/stores/i_chat_room_store.dart';
import 'package:tada_team_test/layers/domain/stores/i_global_store.dart';
import 'package:tada_team_test/layers/presentation/components/chat_text_field.dart';
import 'package:tada_team_test/layers/presentation/components/error_placeholder.dart';
import 'package:tada_team_test/layers/presentation/components/incoming_message_tile.dart';
import 'package:tada_team_test/layers/presentation/components/outgoing_message_tile.dart';

class ChatRoomPage extends StatefulWidget {
  final Room room;

  const ChatRoomPage({
    Key key,
    @required this.room,
  }) : super(key: key);

  @override
  _ChatRoomPageState createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {
  final IChatRoomStore pageStore = getIt();
  final IGlobalStore globalStore = getIt();

  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    pageStore.enterRoom(widget.room.name);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    pageStore.leaveRoom();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.room.name),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Observer(
                builder: (context) {
                  switch (pageStore.historyStatus) {
                    case HistoryStatus.loading:
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    case HistoryStatus.error:
                      return ErrorPlaceholder();
                    case HistoryStatus.roomNotFound:
                      return Center(
                        child: Text(
                          S.of(context).emptyChatHistory,
                        ),
                      );
                    case HistoryStatus.success:
                      return ListView.separated(
                        padding: const EdgeInsets.all(10),
                        controller: _scrollController,
                        itemCount: pageStore.history.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 15),
                        itemBuilder: (context, index) {
                          final message = pageStore.history[index];
                          if (isMyMessage(globalStore.username, message)) {
                            return OutgoingMessageTile(message: message);
                          } else {
                            return IncomingMessageTile(message: message);
                          }
                        },
                      );
                  }
                  throw Exception('An unhandled LoadingStatus case: ${pageStore.historyStatus}');
                },
              ),
            ),
            ChatTextField(
              onSubmitted: (text) {
                pageStore.sendMessage(text);
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
}
