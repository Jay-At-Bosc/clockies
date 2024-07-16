import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

String convertSecondsToHoursAndMinutes(String time) {
  int totalSeconds = int.tryParse(time) ?? 0;

  // Calculate hours and minutes
  int hours = totalSeconds ~/ 3600; // 1 hour = 3600 seconds
  int minutes = (totalSeconds % 3600) ~/ 60; // remaining minutes

  // Return the formatted string
  return '${hours}h ${minutes}m';
}

String? removeHtmlTagsFromString(String? description) {
  final RegExp htmlTagExp =
      RegExp(r'<[^>]*>', multiLine: true, caseSensitive: true);

  // Replace all HTML tags with an empty string
  return description?.replaceAll(htmlTagExp, '');
}

String? formateDateString(String? stringDate) {
  // Parse the input date string into a DateTime object
  if (stringDate!.isNotEmpty) {
    DateTime dateTime = DateTime.parse(stringDate!);

    // Define the desired output format
    DateFormat formatter = DateFormat('MMM d, yyyy');

    // Format the DateTime object into the desired string format
    return formatter.format(dateTime);
  } else {
    return null;
  }
}

String convertToLocalTime(String utcTime) {
  // Parse the input time string to a DateTime object in UTC
  DateTime dateTimeUtc = DateTime.parse(utcTime).toUtc();

  // Convert the UTC DateTime object to local time
  DateTime dateTimeLocal = dateTimeUtc.toLocal();

  String formattedTime = DateFormat.jms().format(dateTimeLocal);

  // Return the formatted local time as a string
  return formattedTime;
}

String startDateFormat(DateTime date) {
  DateTime startOfDay =
      DateTime(date.year, date.month, date.day, 0, 0, 0, 0, 0);

  // Format the DateTime to the desired string format
  return DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(startOfDay);
}

String endTimeFormat(DateTime date) {
  DateTime endTime =
      DateTime(date.year, date.month, date.day, 23, 59, 59, 999, 0);

  return DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(endTime);
}

String calculateTImeDiff(
  String startTime,
  String stopTime,
) {
  // Parse the strings into DateTime objects
  DateTime startDateTime = DateTime.parse(startTime);
  DateTime stopDateTime = DateTime.parse(stopTime);

  // Calculate the difference
  Duration difference = stopDateTime.difference(startDateTime);

  // Extract hours and minutes from the difference
  int hours = difference.inHours;
  int minutes = difference.inMinutes % 60;

  // Format the result
  return '${hours.toString().padLeft(2, '0')}h ${minutes.toString().padLeft(2, '0')}m';
}

String calculateTotalTime(List<TimelineModelStruct> dataList) {
  Duration totalDuration = Duration.zero;

  for (var item in dataList) {
    DateTime startTime = DateTime.parse(item.startTime);
    DateTime stopTime = DateTime.parse(item.stopTime);

    Duration difference = stopTime.difference(startTime);
    totalDuration += difference;
  }

  int totalHours = totalDuration.inHours;
  int totalMinutes = totalDuration.inMinutes % 60;

  return '${totalHours.toString().padLeft(2, '0')}h ${totalMinutes.toString().padLeft(2, '0')}m';
}

String calculateDuration(
  String dateTime1,
  String dateTime2,
) {
  DateFormat format = DateFormat("MM/dd/yyyy hh:mm:ss a");

  DateTime dt1 = format.parse(dateTime1);
  DateTime dt2 = format.parse(dateTime2);

  Duration difference = dt2.difference(dt1);

  int hours = difference.inHours;
  int minutes = difference.inMinutes.remainder(60);

  return '${hours.toString().padLeft(2, '0')}h ${minutes.toString().padLeft(2, '0')}m';
}
