import 'package:flutter/material.dart';

class DateParse {
  static DateTime parseDate(String date) {
    if (date.contains(' ') && date.split(' ')[1].length < 5) {
      List<String> parts = date.split(' ');

      List<String> timeParts = parts[1].split(':');

      timeParts[0] = timeParts[0].padLeft(2, '0');

      date = "${parts[0]} ${timeParts.join(':')}";
    }

    try {
      DateTime parsedDate = DateTime.parse(date.replaceAll(' ', 'T'));
      return parsedDate;
    } catch (e) {
      debugPrint("Error parsing date: $e");
      rethrow;
    }
  }
}
