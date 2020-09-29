// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../layers/application/chat_list/chat_list_store.dart';
import '../layers/application/chat_room/chat_room_store.dart';
import '../layers/application/global/global_store.dart';
import '../layers/domain/repositories/i_chat_client.dart';
import '../layers/domain/repositories/i_chat_facade.dart';
import '../layers/domain/stores/i_chat_list_store.dart';
import '../layers/domain/stores/i_chat_room_store.dart';
import '../layers/domain/repositories/i_chat_service.dart';
import '../layers/domain/stores/i_global_store.dart';
import '../layers/infrastructure/repositories/nane_chat_facade.dart';
import '../layers/infrastructure/repositories/nane_chat_http_client.dart';
import '../layers/infrastructure/repositories/nane_chat_websocket_service.dart';
import 'injection.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<IChatRoomStore>(
      () => ChatRoomStore(get<IChatFacade>(), get<IGlobalStore>()));

  // Eager singletons must be registered in the right order
  gh.singleton<Dio>(registerModule.dio);
  gh.singleton<IChatClient>(NaneChatHttpClient(get<Dio>()));
  gh.singleton<IChatService>(NaneChatService());
  gh.singleton<IGlobalStore>(GlobalStore());
  gh.singleton<IChatFacade>(
      NaneChatFacade(get<IChatClient>(), get<IChatService>()));
  gh.singleton<IChatListStore>(
      ChatListPageStore(get<IChatFacade>(), get<IGlobalStore>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
