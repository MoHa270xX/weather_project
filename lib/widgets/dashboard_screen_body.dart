import 'package:flutter/material.dart';
import 'package:weather_project/widgets/custom_app_bar.dart';
import 'package:weather_project/widgets/information_card.dart';
import 'package:weather_project/widgets/probability_card.dart';

class WeatherProbabilitiesScreenBody extends StatefulWidget {
  const WeatherProbabilitiesScreenBody({super.key});

  @override
  State<WeatherProbabilitiesScreenBody> createState() =>
      _WeatherProbabilitiesScreenState();
}

class _WeatherProbabilitiesScreenState
    extends State<WeatherProbabilitiesScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(
            title: 'Weather Probabilities',
            showBackText: true,
            trailing: const Icon(Icons.download_outlined, color: Colors.white),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const InformationCard(),
                    const SizedBox(height: 16),
                    ProbabilityCard(
                      icon: Icons.thermostat,
                      iconColor: Colors.orange,
                      title: 'Temperature',
                      threshold: 'Threshold: 30°C',
                      probability: '65%',
                    ),
                    const SizedBox(height: 16),
                    ProbabilityCard(
                      icon: Icons.water_drop_outlined,
                      iconColor: Colors.lightBlueAccent,
                      title: 'Precipitation',
                      threshold: 'Threshold: 10mm',
                      probability: '23%',
                    ),
                    const SizedBox(height: 16),
                    ProbabilityCard(
                      icon: Icons.air,
                      iconColor: Colors.white,
                      title: 'Wind Speed',
                      threshold: 'Threshold: 20km/h',
                      probability: '42%',
                    ),
                    const SizedBox(height: 24),
                    // _buildTempDistributionCard(),
                    const SizedBox(height: 24),
                    // _buildTenYearTrendCard(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the Temperature Distribution card.
  /*Widget _buildTempDistributionCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF172A4D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Temperature Distribution',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(height: 16),
          // Placeholder for the chart. You would use a chart library here.
          Container(
            height: 150,
            alignment: Alignment.center,
            child: const Text(
              '[Chart Placeholder]',
              style: TextStyle(color: Colors.white38),
            ),
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _InfoColumn(value: '25.2°C', label: 'Mean'),
              _InfoColumn(value: '24.8°C', label: 'Median'),
              _InfoColumn(value: '32.1°C', label: '90th %'),
            ],
          ),
        ],
      ),
    );
  }

  /// Builds the 10-Year Trend card.
  Widget _buildTenYearTrendCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF172A4D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '10-Year Trend',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Row(
                children: [
                  const Icon(Icons.trending_up, color: Colors.red, size: 20),
                  const SizedBox(width: 4),
                  const Text(
                    '+2.3%',
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Placeholder for the chart.
          Container(
            height: 120,
            alignment: Alignment.center,
            child: const Text(
              '[Line Chart Placeholder]',
              style: TextStyle(color: Colors.white38),
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the custom bottom navigation bar.
}

/// A small helper widget for displaying info like Mean, Median, etc.
class _InfoColumn extends StatelessWidget {
  final String value;
  final String label;

  const _InfoColumn({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(color: Colors.white54, fontSize: 14),
        ),
      ],
    );
  }*/
}
