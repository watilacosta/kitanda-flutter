import 'package:flutter/material.dart';
import 'package:kitanda/src/auth/sign_in_screen.dart';


void main() {
  runApp(const Kitanda());
}

class Kitanda extends StatelessWidget {
  const Kitanda({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SignInScreen(),
    );
  }
}
