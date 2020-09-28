import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:tada_team_test/generated/l10n.dart';
import 'package:tada_team_test/helper/extensions.dart';
import 'package:tada_team_test/layers/domain/entities/room.dart';
import 'package:tada_team_test/layers/presentation/components/a/text_field.dart';
import 'package:tada_team_test/layers/presentation/design_system/design_system.dart';

class NewChatRoomPage extends StatefulWidget {
  @override
  _NewChatRoomPageState createState() => _NewChatRoomPageState();
}

class _NewChatRoomPageState extends State<NewChatRoomPage> {
  TextEditingController _controller;
  FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final designSystem = DesignSystem.of(context);
    final str = S.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(str.newChatRoomPageTitle),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ATextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  inputTextStyle: designSystem.text.loginFormInput,
                  placeholderAlignment: Alignment.center,
                  textAlign: TextAlign.center,
                  placeholder: Text(
                    str.newChatRoomFormPlaceholder,
                    style: designSystem.text.loginFormPlaceholder,
                  ),
                  onSubmitted: (roomName) {
                    ExtendedNavigator.of(context).replace(
                      Routes.chatRoomPage,
                      arguments: ChatRoomPageArguments(
                        room: Room.create(name: roomName),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
