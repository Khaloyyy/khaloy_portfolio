import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePicker {
  // ======================
  // Select Date Controller
  // ======================
  Future<DateTime?> selectDate(
    BuildContext context,
    DateTime? selectedDate,
  ) async {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2029),
    );
  }

  // ======================
  // Select Time Controller
  // ======================

  Future<TimeOfDay?> selectTime(
    BuildContext context,
    TimeOfDay? selectedTime,
  ) async {
    return showTimePicker(
      context: context,
      initialTime: selectedTime!,
    );
  }

  // ======================
  // Format Date to UTC
  // ======================

  DateTime? formattedDateTime(
    BuildContext context,
    DateTime? selectedDate,
    TimeOfDay? selectedTime,
  ) {
    return DateTime(
      selectedDate!.year,
      selectedDate.month,
      selectedDate.day,
      selectedTime!.hour,
      selectedTime.minute,
    ).toUtc();
  }

  String formatTimeOfDay(
    TimeOfDay timeOfDay,
  ) {
    final DateTime now = DateTime.now();
    final DateTime dateTime = DateTime(
      now.year,
      now.month,
      now.day,
      timeOfDay.hour,
      timeOfDay.minute,
    );
    final String formattedTime = DateFormat('hh:mm a').format(dateTime);
    return formattedTime;
  }
}
