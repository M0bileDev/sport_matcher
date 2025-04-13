import 'package:flutter/material.dart';
import 'package:sport_matcher/ui/core/ui/buttons/rounded_button.dart';
import 'package:sport_matcher/ui/core/ui/text_fields/password_text_field.dart';
import 'package:sport_matcher/ui/core/ui/text_fields/plain_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() {
    return _SignInScreenState();
  }
}

class _SignInScreenState extends State<SignInScreen> {
  final _userNameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  void _onSignUp() {
    print('Sign up screen _onSignUp has been called');
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
        title: Text('Sign in'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                   PlainTextField(controller: _userNameTextController, title: "Sign in"),
                  SizedBox(
                    height: 16,
                  ),
                  PasswordTextField(controller: _passwordTextController)
                ],
              ),
            ),
            roundedButton(
              buttonTitle: 'Sign in',
              onPressed: _onSignUp,
            )
          ],
        ),
      ),
    );
  }
}
