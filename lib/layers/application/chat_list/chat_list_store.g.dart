// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatListPageStore on ChatListPageStoreBase, Store {
  Computed<List<Room>> _$roomsComputed;

  @override
  List<Room> get rooms =>
      (_$roomsComputed ??= Computed<List<Room>>(() => super.rooms,
              name: 'ChatListPageStoreBase.rooms'))
          .value;
  Computed<LoadingStatus> _$statusComputed;

  @override
  LoadingStatus get status =>
      (_$statusComputed ??= Computed<LoadingStatus>(() => super.status,
              name: 'ChatListPageStoreBase.status'))
          .value;

  final _$_roomsAtom = Atom(name: 'ChatListPageStoreBase._rooms');

  @override
  List<Room> get _rooms {
    _$_roomsAtom.reportRead();
    return super._rooms;
  }

  @override
  set _rooms(List<Room> value) {
    _$_roomsAtom.reportWrite(value, super._rooms, () {
      super._rooms = value;
    });
  }

  final _$_statusAtom = Atom(name: 'ChatListPageStoreBase._status');

  @override
  LoadingStatus get _status {
    _$_statusAtom.reportRead();
    return super._status;
  }

  @override
  set _status(LoadingStatus value) {
    _$_statusAtom.reportWrite(value, super._status, () {
      super._status = value;
    });
  }

  final _$loadRoomsAsyncAction = AsyncAction('ChatListPageStoreBase.loadRooms');

  @override
  Future<void> loadRooms() {
    return _$loadRoomsAsyncAction.run(() => super.loadRooms());
  }

  final _$refreshRoomsAsyncAction =
      AsyncAction('ChatListPageStoreBase.refreshRooms');

  @override
  Future<void> refreshRooms() {
    return _$refreshRoomsAsyncAction.run(() => super.refreshRooms());
  }

  @override
  String toString() {
    return '''
rooms: ${rooms},
status: ${status}
    ''';
  }
}
