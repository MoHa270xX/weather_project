import 'package:flutter/material.dart';
import 'package:weather_project/widgets/app_info.dart';
import 'package:weather_project/widgets/contact_card.dart';
import 'package:weather_project/widgets/how_it_works.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppInfo(),
        const SizedBox(height: 16),
       HowItWorks(),
        const SizedBox(height: 16),
        ContactCard(),
      ],
    );
  }
}