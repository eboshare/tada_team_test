// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/room/room.dart';
import '../pages/chat_list_page.dart';
import '../pages/chat_room_page.dart';
import '../pages/login_page.dart';
import '../pages/new_chat_room_page.dart';

class Routes {
  static const String loginPage = '/';
  static const String chatListPage = '/chat-list-page';
  static const String chatRoomPage = '/chat-room-page';
  static const String newChatRoomPage = '/new-chat-room-page';
  static const all = <String>{
    loginPage,
    chatListPage,
    chatRoomPage,
    newChatRoomPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.chatListPage, page: ChatListPage),
    RouteDef(Routes.chatRoomPage, page: ChatRoomPage),
    RouteDef(Routes.newChatRoomPage, page: NewChatRoomPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    LoginPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
    ChatListPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChatListPage(),
        settings: data,
      );
    },
    ChatRoomPage: (data) {
      final args = data.getArgs<ChatRoomPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChatRoomPage(
          key: args.key,
          room: args.room,
        ),
        settings: data,
      );
    },
    NewChatRoomPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NewChatRoomPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushLoginPage() => push<dynamic>(Routes.loginPage);

  Future<dynamic> pushChatListPage() => push<dynamic>(Routes.chatListPage);

  Future<dynamic> pushChatRoomPage({
    Key key,
    @required Room room,
  }) =>
      push<dynamic>(
        Routes.chatRoomPage,
        arguments: ChatRoomPageArguments(key: key, room: room),
      );

  Future<dynamic> pushNewChatRoomPage() =>
      push<dynamic>(Routes.newChatRoomPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ChatRoomPage arguments holder class
class ChatRoomPageArguments {
  final Key key;
  final Room room;
  ChatRoomPageArguments({this.key, @required this.room});
}
