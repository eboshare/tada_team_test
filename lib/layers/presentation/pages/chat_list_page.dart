import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:tada_team_test/utils/enums.dart';
import 'package:tada_team_test/generated/l10n.dart';
import 'package:tada_team_test/utils/extensions.dart';
import 'package:tada_team_test/injection/injection.dart';
import 'package:tada_team_test/layers/domain/stores/i_chat_list_store.dart';
import 'package:tada_team_test/layers/presentation/app_widget.dart';
import 'package:tada_team_test/layers/presentation/components/chat_list_tile.dart';
import 'package:tada_team_test/layers/presentation/components/error_placeholder.dart';
import 'package:tada_team_test/layers/presentation/components/tappable.dart';
import 'package:tada_team_test/layers/presentation/design_system/design_system.dart';
import 'package:tada_team_test/layers/presentation/pages/new_chat_room_page.dart';

class ChatListPage extends StatefulWidget {
  @override
  _ChatListPageState createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  final IChatListStore store = getIt();

  RefreshController _refreshController;

  @override
  void initState() {
    super.initState();
    store.init();
    store.loadRooms();
    _refreshController = RefreshController();
  }

  @override
  void dispose() {
    super.dispose();
    store.close();
    _refreshController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final designSystem = DesignSystem.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).chatListPageTitle),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => ExtendedNavigator.of(context).pushNewChatRoomPage(),
      ),
      body: Observer(
        builder: (context) {
          switch (store.status) {
            case LoadingStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case LoadingStatus.error:
              return Center(
                child: ErrorPlaceholder(
                  message: S.of(context).chatListUnableToLoad,
                ),
              );
            case LoadingStatus.success:
              return SmartRefresher(
                controller: _refreshController,
                onRefresh: () {
                  store.refreshRooms();
                  _refreshController.refreshCompleted();
                },
                enablePullDown: true,
                // enablePullUp: true,
                child: ListView.separated(
                  itemCount: store.rooms.length,
                  separatorBuilder: (_, __) {
                    return Container(
                      height: 1,
                      color: designSystem.color.lightGray,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                    );
                  },
                  itemBuilder: (context, index) {
                    final room = store.rooms[index];
                    return Tappable(
                      onTap: () => ExtendedNavigator.of(context).pushChatRoomPage(room: room),
                      child: ChatListTile(room: room),
                    );
                  },
                ),
              );
          }
          throw Exception('An unhandled LoadingStatus case: ${store.status}');
        },
      ),
    );
  }
}
