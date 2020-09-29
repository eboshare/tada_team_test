// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Log In`
  String get loginPageTitle {
    return Intl.message(
      'Log In',
      name: 'loginPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get loginFormUsernamePlaceholder {
    return Intl.message(
      'Username',
      name: 'loginFormUsernamePlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Rooms`
  String get chatListPageTitle {
    return Intl.message(
      'Rooms',
      name: 'chatListPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `HH:mm`
  String get chatListTileTime {
    return Intl.message(
      'HH:mm',
      name: 'chatListTileTime',
      desc: '',
      args: [],
    );
  }

  /// `Can't load chat list, sorry.`
  String get chatListUnableToLoad {
    return Intl.message(
      'Can\'t load chat list, sorry.',
      name: 'chatListUnableToLoad',
      desc: '',
      args: [],
    );
  }

  /// `Enter some text...`
  String get chatTextFieldPlaceholder {
    return Intl.message(
      'Enter some text...',
      name: 'chatTextFieldPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Chat history is empty`
  String get emptyChatHistory {
    return Intl.message(
      'Chat history is empty',
      name: 'emptyChatHistory',
      desc: '',
      args: [],
    );
  }

  /// `Can't load chat history,\ntry again later.`
  String get chatRoomUnableToLoadHistory {
    return Intl.message(
      'Can\'t load chat history,\ntry again later.',
      name: 'chatRoomUnableToLoadHistory',
      desc: '',
      args: [],
    );
  }

  /// `Create Chat Room`
  String get newChatRoomPageTitle {
    return Intl.message(
      'Create Chat Room',
      name: 'newChatRoomPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `New chat room name`
  String get newChatRoomFormPlaceholder {
    return Intl.message(
      'New chat room name',
      name: 'newChatRoomFormPlaceholder',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}