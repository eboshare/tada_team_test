import 'package:auto_route/auto_route_annotations.dart';

import 'package:tada_team_test/layers/presentation/pages/chat_list_page.dart';
import 'package:tada_team_test/layers/presentation/pages/chat_room_page.dart';
import 'package:tada_team_test/layers/presentation/pages/login_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: [
    // MaterialRoute(page: LoginPage, initial: true),
    MaterialRoute(page: ChatListPage, initial: true),
    MaterialRoute(page: ChatRoomPage),
  ],
)
abstract class $Router {}
