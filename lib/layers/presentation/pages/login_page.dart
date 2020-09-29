import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:tada_team_test/helper/extensions.dart';
import 'package:tada_team_test/generated/l10n.dart';
import 'package:tada_team_test/injection/injection.dart';
import 'package:tada_team_test/layers/domain/stores/i_global_store.dart';
import 'package:tada_team_test/layers/presentation/components/login_form_text_field.dart';
import 'package:tada_team_test/layers/presentation/design_system/design_system.dart';

class LoginPage extends StatelessWidget {
  final IGlobalStore store = getIt();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  S.of(context).loginPageTitle,
                  style: DesignSystem.of(context).text.loginPageTitle,
                ),
                const SizedBox(height: 30),
                LoginFormTextField(
                  onSubmitted: (username) {
                    store.setUsername(username);
                    ExtendedNavigator.of(context).pushChatListPage();
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
