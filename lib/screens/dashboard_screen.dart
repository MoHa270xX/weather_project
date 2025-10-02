import 'package:flutter/material.dart';
import 'package:weather_project/widgets/dashboard_screen_body.dart';

class WeatherProbabilitiesScreen extends StatelessWidget {
  const WeatherProbabilitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1B3E),
      body: WeatherProbabilitiesScreenBody());
  }
}
