import 'package:flutter/material.dart';
import 'package:weather_project/screens/dashboard_screen.dart';
import 'package:weather_project/screens/export_data_screen.dart';
import 'package:weather_project/screens/setting_screen.dart';
import 'package:weather_project/screens/welcome_screen.dart';
import 'package:weather_project/widgets/bottom_navigation_bar.dart';
import 'package:weather_project/widgets/location_screen_body.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedNavIndex = 0;
   
  final List<Widget> _screens = const [
   
    LocationTimeScreenBody(),
    WelcomeScreen(),
    WeatherProbabilitiesScreen(),
    ExportDataScreen(),
    SettingScreen(),
  ];

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedNavIndex,
        children: _screens,
      ),
      bottomNavigationBar: CustomBottomNavBar(currentIndex:_selectedNavIndex , onTap: _onNavItemTapped)
    );
  }
}
