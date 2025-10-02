import 'package:flutter/material.dart';
import 'package:weather_project/screens/dashboard_screen.dart';
import 'package:weather_project/screens/export_data_screen.dart';
import 'package:weather_project/screens/setting_screen.dart';
import 'package:weather_project/widgets/search_field.dart';

class ActionBottuns extends StatelessWidget {
  const ActionBottuns({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomActionButton(
        text: 'Search',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingScreen()),
          );
        },
      ),
      CustomActionButton(
        text: 'Drop Pin',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WeatherProbabilitiesScreen()),
          );
        },
      ),
      CustomActionButton(
        text: 'Draw Area',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ExportDataScreen()),
          );
        },
      ),
    ],
  );
  }
}