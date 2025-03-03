import 'package:intl/intl.dart';

class StringUtils {
  static String replaceBy = '-';

  // Truncate String
  static String truncateString(
    String input,
    int minLength,
    int maxLength,
  ) {
    if (input.length < minLength) {
      return input;
    } else if (input.length > maxLength) {
      return '${input.substring(0, maxLength)}...';
    } else {
      return input;
    }
  }

  // Function to convert a date string to a formatted date string
  static String convertStringToDateFormatted(
    String dateTime, {
    String inputPattern = 'y-MM-ddTHH:mm:ssZ',
    String outputPattern = 'MMM. dd, y h:mm a',
  }) {
    try {
      // Parse ISO 8601 input string
      final DateTime parsedDate = DateTime.parse(dateTime).toLocal();

      // Format the parsed date
      final DateFormat outputFormat = DateFormat(outputPattern);
      return outputFormat.format(parsedDate);
    } catch (e) {
      // Handle errors (e.g., malformed input)
      return 'Invalid Date';
    }
  }

  // Function to convert a string to UTC
  static DateTime? convertStringToUTC(String dateTime) {
    try {
      // Parse the input date string to DateTime
      final DateTime parsedDate = DateTime.parse(dateTime);

      // Convert the parsed date to UTC
      return parsedDate.toUtc();
    } catch (e) {
      return null;
    }
  }

  // Get Formatted Date
  static String getFormattedDate(
    DateTime? dateTime, {
    String dateFormat = 'MMMM dd, yyyy | h:mm aa',
  }) {
    return dateTime != null
        ? DateFormat(dateFormat).format(dateTime.toLocal())
        : replaceBy;
  }

  // Format Null
  static String formatNull(String? value) {
    if (value != null && value == 'null') {
      return replaceBy;
    } else if (value == null || value.isEmpty) {
      return replaceBy;
    } else {
      return value;
    }
  }

  // Int To String
  static String intToString(int? value) {
    if (value == null) {
      return replaceBy;
    } else {
      return value.toString();
    }
  }

  // Double to String
  static String doubleToString(double? value) {
    if (value == null) {
      return replaceBy;
    } else {
      return value.toString();
    }
  }

  // Bool To string
  static String boolToString(bool? value) {
    if (value == null) {
      return replaceBy;
    } else {
      return value ? 'Yes' : 'No';
    }
  }

  // Format Name
  static String formatName(
    String? firstName,
    String? middleName,
    String? lastName,
    String? suffix,
  ) {
    final String formattedName = <String>[
      firstName ?? '',
      middleName ?? '',
      lastName ?? '',
      suffix ?? '',
    ].where((String name) => name.isNotEmpty).join(' ');

    return formattedName.isNotEmpty ? formattedName : replaceBy;
  }
}
