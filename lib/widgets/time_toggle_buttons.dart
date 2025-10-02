import 'package:flutter/material.dart';

class TimeToggleButtons extends StatelessWidget {
  final List<String> labels;
  final String selectedLabel;
  final ValueChanged<String> onChanged;

  const TimeToggleButtons({
    Key? key,
    required this.labels,
    required this.selectedLabel,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF0D1B3E),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: labels
            .map(
              (label) => Expanded(
                child: TextButton(
                  onPressed: () => onChanged(label),
                  style: TextButton.styleFrom(
                    backgroundColor: selectedLabel == label
                        ? Colors.white
                        : Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: Text(
                    label,
                    style: TextStyle(
                      color: selectedLabel == label
                          ? const Color(0xFF0D1B3E)
                          : Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}