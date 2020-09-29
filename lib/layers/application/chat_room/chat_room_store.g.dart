// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatRoomStore on ChatRoomStoreBase, Store {
  Computed<List<IncomingMessage>> _$historyComputed;

  @override
  List<IncomingMessage> get history => (_$historyComputed ??=
          Computed<List<IncomingMessage>>(() => super.history,
              name: 'ChatRoomStoreBase.history'))
      .value;
  Computed<HistoryStatus> _$historyStatusComputed;

  @override
  HistoryStatus get historyStatus => (_$historyStatusComputed ??=
          Computed<HistoryStatus>(() => super.historyStatus,
              name: 'ChatRoomStoreBase.historyStatus'))
      .value;

  final _$_chatRoomAtom = Atom(name: 'ChatRoomStoreBase._chatRoom');

  @override
  IChatRoom get _chatRoom {
    _$_chatRoomAtom.reportRead();
    return super._chatRoom;
  }

  @override
  set _chatRoom(IChatRoom value) {
    _$_chatRoomAtom.reportWrite(value, super._chatRoom, () {
      super._chatRoom = value;
    });
  }

  final _$_historyAtom = Atom(name: 'ChatRoomStoreBase._history');

  @override
  List<IncomingMessage> get _history {
    _$_historyAtom.reportRead();
    return super._history;
  }

  @override
  set _history(List<IncomingMessage> value) {
    _$_historyAtom.reportWrite(value, super._history, () {
      super._history = value;
    });
  }

  final _$_historyStatusAtom = Atom(name: 'ChatRoomStoreBase._historyStatus');

  @override
  HistoryStatus get _historyStatus {
    _$_historyStatusAtom.reportRead();
    return super._historyStatus;
  }

  @override
  set _historyStatus(HistoryStatus value) {
    _$_historyStatusAtom.reportWrite(value, super._historyStatus, () {
      super._historyStatus = value;
    });
  }

  final _$loadMessageHistoryAsyncAction =
      AsyncAction('ChatRoomStoreBase.loadMessageHistory');

  @override
  Future<void> loadMessageHistory(String roomName) {
    return _$loadMessageHistoryAsyncAction
        .run(() => super.loadMessageHistory(roomName));
  }

  final _$ChatRoomStoreBaseActionController =
      ActionController(name: 'ChatRoomStoreBase');

  @override
  void sendMessage(String text) {
    final _$actionInfo = _$ChatRoomStoreBaseActionController.startAction(
        name: 'ChatRoomStoreBase.sendMessage');
    try {
      return super.sendMessage(text);
    } finally {
      _$ChatRoomStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
history: ${history},
historyStatus: ${historyStatus}
    ''';
  }
}
