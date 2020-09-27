import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:tada_team_test/helper/constants.dart';
import 'package:tada_team_test/injection/injection.dart';
import 'package:tada_team_test/layers/domain/stores/i_chat_list_store.dart';
import 'package:tada_team_test/layers/presentation/components/error_placeholder.dart';

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
    return Scaffold(
      body: Center(
        child: Observer(
          builder: (context) {
            switch (store.status) {
              case LoadingStatus.loading:
                return const CircularProgressIndicator();
              case LoadingStatus.success:
                return Text(store.rooms.toString());
              case LoadingStatus.error:
                return ErrorPlaceholder();
            }
            throw Exception('An unhandled LoadingStatus case: ${store.status}');
          },
        ),
      ),
    );
  }
}
