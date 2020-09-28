import 'package:flutter/material.dart';

import 'package:tada_team_test/helper/extensions.dart';

class DesignSystemColor {
  final Color blue;
  final Color black;
  final Color gray;
  final Color lightGray;
  final Color white;
  final Color whiteLilac;

  const DesignSystemColor({
    @required this.blue,
    @required this.black,
    @required this.gray,
    @required this.lightGray,
    @required this.white,
    @required this.whiteLilac,
  });
}

class DesignSystemText {
  final TextStyle chatListTileUsername;
  final TextStyle chatListTileLastMessageText;
  final TextStyle chatListTileLastMessageTime;
  final TextStyle outgoingMessageText;
  final TextStyle incomingMessageText;
  final TextStyle chatTextFieldInput;
  final TextStyle chatTextFieldPlaceholder;

  const DesignSystemText({
    @required this.chatListTileUsername,
    @required this.chatListTileLastMessageText,
    @required this.chatListTileLastMessageTime,
    @required this.outgoingMessageText,
    @required this.incomingMessageText,
    @required this.chatTextFieldInput,
    @required this.chatTextFieldPlaceholder,
  });
}

class DesignSystemData {
  final DesignSystemColor color;
  final DesignSystemText text;

  const DesignSystemData({
    @required this.color,
    @required this.text,
  });

  factory DesignSystemData.main() {
    final color = DesignSystemColor(
      blue: '#2675EC'.toColor(),
      white: '#FFFFFF'.toColor(),
      black: '#131313'.toColor(),
      gray: '#848484'.toColor(),
      lightGray: '#F6F6F6'.toColor(),
      whiteLilac: '#F5F6FC'.toColor(),
    );

    const roboto = TextStyle(fontFamily: 'Roboto');

    return DesignSystemData(
      color: color,
      text: DesignSystemText(
        chatListTileUsername: roboto.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 23,
          height: 28 / 23,
          color: color.black,
        ),
        chatListTileLastMessageText: roboto.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          height: 19 / 16,
          color: color.gray,
        ),
        chatListTileLastMessageTime: roboto.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 17,
          height: 21 / 17,
          color: color.gray,
        ),
        outgoingMessageText: roboto.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          height: 1.56,
          color: color.black,
        ),
        incomingMessageText: roboto.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          height: 1.56,
          color: color.white,
        ),
        chatTextFieldInput: roboto.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 17,
          height: 21 / 17,
          color: color.black,
        ),
        chatTextFieldPlaceholder: roboto.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 17,
          height: 21 / 17,
          color: color.gray,
        ),
      ),
    );
  }
}
