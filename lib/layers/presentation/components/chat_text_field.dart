import 'package:flutter/material.dart';

import 'package:tada_team_test/generated/l10n.dart';
import 'package:tada_team_test/helper/extensions.dart';
import 'package:tada_team_test/layers/presentation/design_system/design_system.dart';

class ChatTextField extends StatefulWidget {
  final void Function(String text) onSubmitted;

  const ChatTextField({
    Key key,
    this.onSubmitted,
  }) : super(key: key);

  @override
  _ChatTextFieldState createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
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
    return Container(
      padding: const EdgeInsets.all(10),
      color: designSystem.color.white,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 27,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: designSystem.color.whiteLilac,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Stack(
          children: [
            EditableText(
              controller: _controller,
              focusNode: _focusNode,
              backgroundCursorColor: designSystem.color.blue,
              cursorColor: designSystem.color.blue,
              style: designSystem.text.chatTextFieldInput,
              onSubmitted: (text) {
                if (widget.onSubmitted != null) {
                  widget.onSubmitted(text);
                }
                _controller.clear();
              },
            ),
            ValueListenableBuilder<TextEditingValue>(
              valueListenable: _controller,
              builder: (context, value, _) {
                return Container(
                  child: !value.text.isEmptyOrNull
                      ? null
                      : Text(
                          S.of(context).chatTextFieldPlaceholder,
                          style: designSystem.text.chatTextFieldPlaceholder,
                        ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
