import 'package:flutter/material.dart';

import 'components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Column(
        children: [
          Expanded(
              child: Container(color: Colors.lightGreen,)
          ),
          Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30)
                  )
                ),
                child: Column(
                  children: const [
                    CustomTextField(
                      prefixIcon: Icons.email,
                      label: 'Email',
                    ),
                    CustomTextField(
                      prefixIcon: Icons.lock,
                      suffixIcon: Icons.visibility,
                      label: 'Password',
                      occultText: true
                    ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
