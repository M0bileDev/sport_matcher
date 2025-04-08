import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Image.asset(
                      'lib/features/authentication/assets/logo.png',
                    ),
                  ),
                  const Spacer(),
                  roundedButton(buttonTitle: "Sign in",
                   onPressed: () {
                    print("Sign in");
                  }),
                  roundedButton(buttonTitle: "Register", onPressed: () {
                    print("Register");
                  })
                ],
              ))),
    );
  }

  Widget roundedButton({required String buttonTitle, required VoidCallback onPressed}) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
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
