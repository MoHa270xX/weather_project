import 'package:flutter/material.dart';

class CustomCalendar extends StatelessWidget {
  final String monthYearLabel;
  final List<String> daysInMonth;
  final String selectedDay;
  final ValueChanged<String>? onDaySelected;

  const CustomCalendar({
    Key? key,
    required this.monthYearLabel,
    required this.daysInMonth,
    required this.selectedDay,
    this.onDaySelected,
  }) : super(key: key);

  static const List<String> _dayHeaders = ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header (month + arrows)
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.chevron_left, color: Colors.white),
            Text(
              monthYearLabel,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.white),
          ],
        ),
        const SizedBox(height: 20),

        // Day headers (Su, Mo, ...)
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7,
          ),
          itemCount: _dayHeaders.length,
          itemBuilder: (context, index) {
            return Center(
              child: Text(
                _dayHeaders[index],
                style: const TextStyle(color: Colors.white54),
              ),
            );
          },
        ),
        const SizedBox(height: 10),

        // Calendar days
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7,
            childAspectRatio: 1.2,
          ),
          itemCount: daysInMonth.length,
          itemBuilder: (context, index) {
            final day = daysInMonth[index];
            final isCurrentDay = day == selectedDay && index >= 4 && index <= 34;
            final isOtherMonth = index < 4 || index > 34;

            return GestureDetector(
              onTap: () {
                if (onDaySelected != null) {
                  onDaySelected!(day);
                }
              },
              child: Container(
                margin: const EdgeInsets.all(4),
                alignment: Alignment.center,
                decoration: isCurrentDay
                    ? const BoxDecoration(
                        color: Color(0xFFF38B3A),
                        shape: BoxShape.circle,
                      )
                    : null,
                child: Text(
                  day,
                  style: TextStyle(
                    color: isOtherMonth ? Colors.white38 : Colors.white,
                    fontWeight: isCurrentDay ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
