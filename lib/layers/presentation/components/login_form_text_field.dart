import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tada_team_test/generated/l10n.dart';
import 'package:tada_team_test/helper/extensions.dart';
import 'package:tada_team_test/layers/presentation/components/a/text_field.dart';
import 'package:tada_team_test/layers/presentation/design_system/design_system.dart';

class LoginFormTextField extends StatefulWidget {
  final void Function(String text) onSubmitted;

  const LoginFormTextField({
    Key key,
    this.onSubmitted,
  }) : super(key: key);

  @override
  _LoginFormTextFieldState createState() => _LoginFormTextFieldState();
}

class _LoginFormTextFieldState extends State<LoginFormTextField> {
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
    return ATextField(
      controller: _controller,
      focusNode: _focusNode,
      onSubmitted: widget.onSubmitted,
      placeholder: Text(
        S.of(context).loginFormUsernamePlaceholder,
        style: designSystem.text.loginFormPlaceholder,
      ),
      textAlign: TextAlign.center,
      placeholderAlignment: Alignment.center,
      inputTextStyle: designSystem.text.loginFormInput,
    );
  }
}
