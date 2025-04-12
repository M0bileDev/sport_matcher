import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Image.asset(
                    'lib/features/authentication/assets/logo.png',
                  ),
                ),
                const Spacer(),
                _roundedButton(
                    buttonTitle: "Sign in",
                    onPressed: () {
                      print("Sign in");
                    }),
                _roundedButton(
                    buttonTitle: "Register",
                    onPressed: () {
                      print("Register");
                    })
              ],
            )));
  }

  Widget _roundedButton(
      {required String buttonTitle, required VoidCallback onPressed}) {
    double borderRadius = 30;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: borderRadius,
          ),
        ),
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
