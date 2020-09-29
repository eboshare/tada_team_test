// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GlobalStore on GlobalStoreBase, Store {
  Computed<String> _$usernameComputed;

  @override
  String get username =>
      (_$usernameComputed ??= Computed<String>(() => super.username,
              name: 'GlobalStoreBase.username'))
          .value;

  final _$_usernameAtom = Atom(name: 'GlobalStoreBase._username');

  @override
  String get _username {
    _$_usernameAtom.reportRead();
    return super._username;
  }

  @override
  set _username(String value) {
    _$_usernameAtom.reportWrite(value, super._username, () {
      super._username = value;
    });
  }

  final _$GlobalStoreBaseActionController =
      ActionController(name: 'GlobalStoreBase');

  @override
  void setUsername(String username) {
    final _$actionInfo = _$GlobalStoreBaseActionController.startAction(
        name: 'GlobalStoreBase.setUsername');
    try {
      return super.setUsername(username);
    } finally {
      _$GlobalStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username}
    ''';
  }
}
