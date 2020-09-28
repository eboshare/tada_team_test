import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import 'package:tada_team_test/layers/domain/stores/i_global_store.dart';

part 'global_store.g.dart';

@Singleton(as: IGlobalStore)
class GlobalStore = GlobalStoreBase with _$GlobalStore;

abstract class GlobalStoreBase with Store implements IGlobalStore {
  @observable
  String _username;

  @override
  @computed
  String get username => _username;

  @override
  @action
  void setUsername(String username) {
    _username = username;
  }
}
