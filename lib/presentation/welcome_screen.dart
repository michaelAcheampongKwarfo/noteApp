// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:note_app/services/auth_methods.dart';
import 'package:note_app/shared/shared_button.dart';
import 'package:note_app/shared/shared_colors.dart';
import 'package:note_app/shared/shared_text.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Image.asset(
              'lib/images/app_logo.png',
              filterQuality: FilterQuality.low,
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SharedText(
                  text: 'Write down your ideas and improve productivity',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SharedButton(
                    onTap: () async {
                      bool result =
                          await _authMethods.signInWithGoogle(context);
                      if (result) {
                        Navigator.of(context).pushNamed('/home');
                      }
                    },
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SharedText(
                          text: 'Let`s Get Started',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: SharedColors.whiteColor,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: SharedColors.whiteColor,
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
