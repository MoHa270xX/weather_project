import 'package:flutter/material.dart';
import 'package:weather_project/functions.dart';
import 'package:weather_project/widgets/Location_card.dart';
import 'package:weather_project/widgets/custom_app_bar.dart';
import 'package:weather_project/widgets/custom_calender.dart';
import 'package:weather_project/widgets/time_toggle_buttons.dart';

class LocationTimeScreenBody extends StatefulWidget {
  const LocationTimeScreenBody({super.key});

  @override
  State<LocationTimeScreenBody> createState() => _LocationTimeScreenState();
}

class _LocationTimeScreenState extends State<LocationTimeScreenBody> {
  String _selectedTimeView = 'Day';
  String _selectedDay = '2';
final List<String> daysInMonth = generateCalendarDays(2025, 10);


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1B3E),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: 'Location & Time'),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const LocationCard(),
                      const SizedBox(height: 24),
                      _buildTimeCard(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: CustomBottomNavBar(currentIndex: _selectedNavIndex, onTap:_onNavItemTapped ),
    );
  }

  Widget _buildTimeCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF172A4D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const Row(
            children: [
              Icon(Icons.calendar_today_outlined, color: Colors.white70),
              SizedBox(width: 8),
              Text(
                'Choose Time',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TimeToggleButtons(
            labels: ['Day', 'Month', 'Season'],
            selectedLabel: _selectedTimeView,
            onChanged: (newLabel) {
              setState(() {
                _selectedTimeView = newLabel;
              });
            },
          ),
          const SizedBox(height: 24),
          CustomCalendar( 
    monthYearLabel: 'October 2025',
    daysInMonth: daysInMonth,
    selectedDay: _selectedDay,
    onDaySelected: (newDay) {
      setState(() {
        _selectedDay = newDay;
      });
    },),
        ],
      ),
    );
  }

 


 
}

