import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:kitanda/src/auth/sign_up_screen.dart';
import 'package:kitanda/src/base/base_screen.dart';
import 'package:kitanda/src/config/custom_colors.dart';

import 'components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(style: const TextStyle(fontSize: 40), children: [
                        const TextSpan(
                          text: 'Kitanda',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'On',
                          style: TextStyle(
                            color: CustomColors.customContrastColor,
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 23,
                      child: DefaultTextStyle(
                        style: const TextStyle(fontSize: 22),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          pause: Duration.zero,
                          animatedTexts: [
                            FadeAnimatedText('Frutas'),
                            FadeAnimatedText('Verduras'),
                            FadeAnimatedText('Legumes'),
                            FadeAnimatedText('Carnes'),
                            FadeAnimatedText('Cereais'),
                            FadeAnimatedText('Laticínios'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomTextField(
                      prefixIcon: Icons.email,
                      label: 'Email',
                    ),
                    const CustomTextField(
                      prefixIcon: Icons.lock,
                      label: 'Password',
                      isSecret: true,
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (c) {
                              return BaseScreen();
                            }),
                          );
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    TextButton(
                      style:
                          const ButtonStyle(alignment: Alignment.bottomRight),
                      onPressed: () {},
                      child: Text(
                        'Esqueceu a senha?',
                        style:
                            TextStyle(color: CustomColors.customContrastColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text('ou'),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (buildContext) {
                              return SignUpScreen();
                            }),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          side: const BorderSide(width: 2, color: Colors.green),
                        ),
                        child: const Text(
                          'Criar Conta',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
