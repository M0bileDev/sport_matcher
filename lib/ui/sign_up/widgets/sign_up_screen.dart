import 'package:flutter/material.dart';
import 'package:sport_matcher/ui/core/ui/rounded_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() {
    return _SignUpScreenState();
  }
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _userNameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  bool _obscurePassword = true;
  IconData? _passwordSuffixIcon;

  void _onSignUp() {
    print('Sign up screen _onSignUp has been called');
  }

  void _switchPasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  void dispose() {
    _userNameTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _passwordSuffixIcon =
        _obscurePassword ? Icons.visibility_off : Icons.visibility;

    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    controller: _userNameTextController,
                    decoration: InputDecoration(
                      label: Text('Username'),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    obscureText: _obscurePassword,
                    controller: _passwordTextController,
                    decoration: InputDecoration(
                        label: Text('Password'),
                        suffixIcon: IconButton(
                          icon: Icon(_passwordSuffixIcon),
                          onPressed: _switchPasswordVisibility,
                        )),
                  ),
                ],
              ),
            ),
            roundedButton(
              buttonTitle: 'Sign up',
              onPressed: _onSignUp,
            )
          ],
        ),
      ),
    );
  }
}
