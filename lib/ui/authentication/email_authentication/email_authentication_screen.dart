import 'package:flutter/material.dart';
import 'package:sport_matcher/ui/core/ui/buttons/rounded_button.dart';
import 'package:sport_matcher/ui/core/ui/text_fields/password_text_field.dart';
import 'package:sport_matcher/ui/core/ui/text_fields/plain_text_field.dart';
import 'package:sport_matcher/ui/core/utilities/validators/email_validator.dart';
import 'package:sport_matcher/ui/core/utilities/validators/minimum_text_length_validator.dart';

class EmailAuthenticationScreen extends StatefulWidget {
  const EmailAuthenticationScreen({super.key, required String title})
      : _title = title;

  final String _title;

  @override
  State<EmailAuthenticationScreen> createState() {
    return _EmailAuthenticationScreenState();
  }
}

class _EmailAuthenticationScreenState extends State<EmailAuthenticationScreen> {
  final _userNameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  void _onFinishProcessSelected() {
    print('Email authentication screen _onFinishProcessSelected');
  }

  @override
  void dispose() {
    _userNameTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  PlainTextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _userNameTextController,
                    title: "Email",
                    validator: EmailValidator(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  PasswordTextField(
                    controller: _passwordTextController,
                    validator: MinimumTextLengthValidator(minimumLength: 12),
                  )
                ],
              ),
            ),
            roundedButton(
              buttonTitle: widget._title,
              onPressed: _onFinishProcessSelected,
            )
          ],
        ),
      ),
    );
  }
}
