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
  DateTime dateTime1,
  DateTime dateTime2,
) {
  Duration difference = dateTime2.difference(dateTime1);

  int hours = difference.inHours;
  int minutes = difference.inMinutes.remainder(60);

  return '${hours.toString().padLeft(2, '0')}h ${minutes.toString().padLeft(2, '0')}m';
}

DateTime convertUtcToLocal(String utcTime) {
  DateTime utcDateTime = DateTime.parse(utcTime);
  DateTime localDateTime = utcDateTime.toLocal();
  return localDateTime;
}

String selectGreetings(DateTime currentTime) {
  if (currentTime.hour >= 5 && currentTime.hour < 12) {
    return "Good Morning, ";
  } else if (currentTime.hour >= 12 && currentTime.hour < 17) {
    return "Good Afternoon, ";
  } else {
    return "Good Evening, ";
  }
}

String capitalizeFirstWord(String input) {
  // Trim the input to remove leading and trailing spaces
  input = input.trim();

  // Split the input string by spaces into a list of words
  List<String> words = input.split(' ');

  // Find the first non-empty word
  String firstWord =
      words.firstWhere((word) => word.isNotEmpty, orElse: () => '');

  // Capitalize the first letter of the first non-empty word
  if (firstWord.isNotEmpty) {
    return firstWord[0].toUpperCase() + firstWord.substring(1).toLowerCase();
  }

  // Return an empty string if no valid words are found
  return '';
}

Color getRandomColor() {
  // Define a list of colors
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
  ];

  // Generate a random number between 0 and 5
  int randomIndex = math.Random().nextInt(6);

  // Return the color corresponding to the random index
  return colors[randomIndex];
}

String getTaskStatus(String endDateString) {
  DateTime endDate = DateTime.parse(endDateString);
  DateTime today = DateTime.now();
  DateTime tomorrow = today.add(Duration(days: 1));
  DateTime yesterday = today.subtract(Duration(days: 1));

  // Set times to 00:00:00 for date comparison
  endDate = DateTime(endDate.year, endDate.month, endDate.day);
  today = DateTime(today.year, today.month, today.day);
  tomorrow = DateTime(tomorrow.year, tomorrow.month, tomorrow.day);
  yesterday = DateTime(yesterday.year, yesterday.month, yesterday.day);

  // Check if endDate is today, tomorrow, or yesterday
  if (endDate.isAtSameMomentAs(today)) {
    return "Today";
  } else if (endDate.isAtSameMomentAs(tomorrow)) {
    return "Tomorrow";
  } else if (endDate.isAtSameMomentAs(yesterday)) {
    return "Yesterday";
  }

  // // Check if endDate is within the next week
  // int daysDifference = endDate.difference(today).inDays;
  // if (daysDifference > 0 && daysDifference <= 7) {
  //   return getWeekdayName(endDate.weekday);
  // }

  // // If endDate is before today or more than 7 days away
  // if (endDate.isBefore(today)) {
  //   return formatDate(endDate);
  // } else {
  //   return formatDate(endDate);
  // }
  return "";
}

String? removePTagsAndFormatParagraph(String? text) {
  if (text == '') {
    return '';
  }
  String input = text ?? '';

  // Remove <p> and </p> tags
  String cleanedText = input.replaceAll(RegExp(r'<\/?p>'), '\n');

  // Join the remaining text into a single paragraph
  String paragraph = cleanedText.split(' ').join(' ');

  return paragraph;
}

String? getWeekdayName(String? weekday) {
  switch (weekday) {
    case DateTime.monday:
      return "Monday";
    case DateTime.tuesday:
      return "Tuesday";
    case DateTime.wednesday:
      return "Wednesday";
    case DateTime.thursday:
      return "Thursday";
    case DateTime.friday:
      return "Friday";
    case DateTime.saturday:
      return "Saturday";
    case DateTime.sunday:
      return "Sunday";
    default:
      return "";
  }
}

bool checkDateTimeLine(
  String? utcDateString,
  String? condition,
) {
  if (utcDateString == null || utcDateString.isEmpty) {
    // Handle null or empty date string
    return false;
  }

  DateTime utcDateTime = DateTime.parse(utcDateString);
  DateTime localDateTime = utcDateTime.toLocal();
  print(localDateTime.toString());
//   print(DateTime.now().toString());
  DateTime now = DateTime.now();
  DateTime today = DateTime(now.year, now.month, now.day);
  DateTime tomorrow = today.add(Duration(days: 1));
// Current Week
  // DateTime startOfWeek = today.subtract(Duration(days: today.weekday));
  // DateTime endOfWeek = startOfWeek.add(Duration(days: 6));
  // DateTime yesterday = today.subtract(Duration(days: 1));

// Mon to Fri
  DateTime startOfWeek = today.subtract(Duration(days: today.weekday - 1));
  DateTime endOfWeek = startOfWeek.add(Duration(days: 4));
  DateTime yesterday = today.subtract(Duration(days: 1));

  switch (condition ?? 'today'.toLowerCase()) {
    case 'today':
      return localDateTime.year == today.year &&
          localDateTime.month == today.month &&
          localDateTime.day == today.day;
    case 'tomorrow':
      return localDateTime.year == tomorrow.year &&
          localDateTime.month == tomorrow.month &&
          localDateTime.day == tomorrow.day;
    case 'yesterday':
      return localDateTime.year == yesterday.year &&
          localDateTime.month == yesterday.month &&
          localDateTime.day == yesterday.day;
    case 'currentweek':
      return localDateTime.isAfter(startOfWeek.subtract(Duration(days: 1))) &&
          localDateTime.isBefore(endOfWeek.add(Duration(days: 1)));
    default:
      return false;
  }
}

dynamic checkDateTimelines(String? utcDateString) {
// Color hexToColor(String hexString) {
  //   final buffer = StringBuffer();
  //   if (hexString.length == 7)
  //     buffer.write('ff'); // Add full opacity if hex is 6 chars
  //   buffer.write(hexString.replaceFirst('#', ''));
  //   return Color(int.parse(buffer.toString(), radix: 16));
  // }

  if (utcDateString == null || utcDateString.isEmpty) {
    // Handle null or empty date string
    return {
      'type': 'invalid',
      'string': 'Invalid date',
      'color': '#000000', // Black for invalid date
    };
  }

  DateTime utcDateTime = DateTime.parse(utcDateString);
  DateTime localDateTime = utcDateTime.toLocal();
  DateTime now = DateTime.now();
  DateTime today = DateTime(now.year, now.month, now.day);
  DateTime tomorrow = today.add(Duration(days: 1));
  DateTime startOfWeek = today.subtract(Duration(days: today.weekday - 1));
  DateTime endOfWeek = startOfWeek.add(Duration(days: 6));
  DateTime yesterday = today.subtract(Duration(days: 1));

  String formattedDate = DateFormat('d MMMM').format(localDateTime);
  if (localDateTime.year != today.year) {
    formattedDate += ', ${localDateTime.year}';
  }

  String type;
  String displayString;
  String color;

  if (localDateTime.year == today.year &&
      localDateTime.month == today.month &&
      localDateTime.day == today.day) {
    type = 'today';
    displayString = 'Today';
    color = '#FF0000'; // Red for today
  } else if (localDateTime.year == tomorrow.year &&
      localDateTime.month == tomorrow.month &&
      localDateTime.day == tomorrow.day) {
    type = 'tomorrow';
    displayString = 'Tomorrow';
    color = '#00FF00'; // Green for tomorrow
  } else if (localDateTime.year == yesterday.year &&
      localDateTime.month == yesterday.month &&
      localDateTime.day == yesterday.day) {
    type = 'yesterday';
    displayString = 'Yesterday';
    color = '#0000FF'; // Blue for yesterday
  } else if (localDateTime.isAfter(today) &&
      localDateTime.isBefore(endOfWeek.add(Duration(days: 1)))) {
    type = 'currentWeek';
    displayString = formattedDate;
    color = '#FFFF00'; // Yellow for this week
  } else {
    type = 'date';
    displayString = formattedDate;
    color = '#808080'; // Grey for other dates
  }

  Map<String, dynamic> datesTimeline = {
    'type': type,
    'string': displayString,
    'color': color
  };

  String datesTimelineJSON = jsonEncode(datesTimeline);
  Map<String, dynamic> datesTimelineMap = jsonDecode(datesTimelineJSON);

  return datesTimelineMap;
}
