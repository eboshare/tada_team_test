import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:tada_team_test/utils/extensions.dart';

part 'design_system_data.freezed.dart';

@freezed
abstract class DesignDimension with _$DesignDimension {
  factory DesignDimension({
    @required double bubbleRadius,
  }) = _DesignDimension;
}

@freezed
abstract class DesignSystemColor with _$DesignSystemColor {
  factory DesignSystemColor({
    @required Color blue,
    @required Color black,
    @required Color gray,
    @required Color lightGray,
    @required Color white,
    @required Color whiteLilac,
  }) = _DesignSystemColor;
}

@freezed
abstract class DesignSystemText with _$DesignSystemText {
  factory DesignSystemText({
    @required TextStyle chatListTileUsername,
    @required TextStyle chatListTileLastMessageText,
    @required TextStyle chatListTileLastMessageTime,
    @required TextStyle outgoingMessageText,
    @required TextStyle incomingMessageText,
    @required TextStyle chatTextFieldInput,
    @required TextStyle chatTextFieldPlaceholder,
    @required TextStyle loginFormPlaceholder,
    @required TextStyle loginPageTitle,
    @required TextStyle loginFormInput,
    @required TextStyle incomingMessageSender,
    @required TextStyle infoMessage,
  }) = _DesignSystemText;
}

class DesignSystemData {
  final DesignSystemColor color;
  final DesignSystemText text;
  final DesignDimension dimension;

  const DesignSystemData({
    @required this.color,
    @required this.text,
    @required this.dimension,
  });

  factory DesignSystemData.main() {
    const _loginFormFontSize = 22.0;

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
      dimension: DesignDimension(
        bubbleRadius: 35,
      ),
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
        incomingMessageSender: roboto.copyWith(
          fontSize: 10,
          color: color.lightGray.withOpacity(0.6),
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
        loginPageTitle: roboto.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 30,
          color: color.blue,
        ),
        loginFormPlaceholder: roboto.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: _loginFormFontSize,
          color: color.gray,
        ),
        loginFormInput: roboto.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: _loginFormFontSize,
          color: color.black,
        ),
        infoMessage: roboto.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          height: 19 / 16,
          color: color.gray,
        ),
      ),
    );
  }
}
