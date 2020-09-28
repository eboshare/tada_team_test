import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:tada_team_test/helper/constants.dart';
import 'package:tada_team_test/helper/extensions.dart';
import 'package:tada_team_test/injection/injection.dart';
import 'package:tada_team_test/layers/domain/stores/i_chat_list_store.dart';
import 'package:tada_team_test/layers/presentation/components/chat_list_tile.dart';
import 'package:tada_team_test/layers/presentation/components/error_placeholder.dart';
import 'package:tada_team_test/layers/presentation/components/tappable.dart';
import 'package:tada_team_test/layers/presentation/design_system/design_system.dart';

class ChatListPage extends StatefulWidget {
  @override
  _ChatListPageState createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  final IChatListStore store = getIt();

  @override
  void initState() {
    super.initState();
    store.loadRooms();
  }

  @override
  Widget build(BuildContext context) {
    final designSystem = DesignSystem.of(context);
    return Scaffold(
      body: Observer(
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
                itemCount: store.rooms.length,
                separatorBuilder: (_, __) {
                  return Container(
                    height: 1,
                    color: designSystem.color.gray,
                  );
                },
                itemBuilder: (context, index) {
                  final room = store.rooms[index];
                  return Tappable(
                    onTap: () => ExtendedNavigator.of(context).pushChatRoomPage(room: room),
                    child: ChatListTile(room: room),
                  );
                },
              );
          }
          throw Exception('An unhandled LoadingStatus case: ${store.status}');
        },
      ),
    );
  }
}
