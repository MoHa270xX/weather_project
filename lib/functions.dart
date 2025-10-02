List<String> generateCalendarDays(int year, int month) {
  final firstDayOfMonth = DateTime(year, month, 1);
  final daysInCurrentMonth = DateTime(year, month + 1, 0).day;
  final startWeekday = firstDayOfMonth.weekday % 7; 
  final totalCells = 42; 

  List<String> days = [];

  final prevMonthDays = DateTime(year, month, 0).day;
  for (int i = startWeekday - 1; i >= 0; i--) {
    days.add((prevMonthDays - i).toString());
  }

  for (int i = 1; i <= daysInCurrentMonth; i++) {
    days.add(i.toString());
  }

  while (days.length < totalCells) {
    days.add((days.length - (startWeekday) - daysInCurrentMonth + 1).toString());
  }

  return days;
}