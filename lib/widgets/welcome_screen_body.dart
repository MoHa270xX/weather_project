import 'package:flutter/material.dart';
import 'package:weather_project/widgets/continue_button.dart';
import 'package:weather_project/widgets/how_it_works_button.dart';
import 'package:weather_project/widgets/sign_in_button.dart';
import 'package:weather_project/widgets/welcome_logo.dart';
import 'package:weather_project/widgets/welcome_subtittle.dart';
import 'package:weather_project/widgets/welcome_tittle.dart' show WelcomeTittle;

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            WelcomeLogo(),
            const SizedBox(height: 16),
            WelcomeTittle(),
            const SizedBox(height: 16),
            WelcomeSubtittle(),
            const Spacer(flex: 3),
            // Pass the context to the button builder
            ContinueButton(),
            const SizedBox(height: 16),
            SignInButton(),
            const SizedBox(height: 24),
            HowItWorksButton(),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
