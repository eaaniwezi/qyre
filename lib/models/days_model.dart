import 'package:flutter/material.dart';
import '../../const/theme.dart' as style;

class DaysModel {
  final bool isToday;
  final String dayOfWeek;
  final String month;
  final String date;
  final bool hasColor;
  final Color? color;
  DaysModel({
    required this.isToday,
    required this.dayOfWeek,
    required this.month,
    required this.date,
    required this.hasColor,
    this.color,
  });
}

List<DaysModel> dummyList = [
  DaysModel(
      isToday: true,
      dayOfWeek: "Mon",
      month: "Oct",
      date: "18",
      hasColor: true,
      color: style.Colors.orangeColor),
  DaysModel(
      isToday: false,
      dayOfWeek: "Tue",
      month: "Oct",
      date: "19",
      hasColor: true,
      color: style.Colors.blueColor),
  DaysModel(
      isToday: false,
      dayOfWeek: "Wed",
      month: "Oct",
      date: "20",
      hasColor: false),
  DaysModel(
      isToday: false,
      dayOfWeek: "Thu",
      month: "Oct",
      date: "21",
      hasColor: true,
      color: style.Colors.orangeColor),
  DaysModel(
      isToday: false,
      dayOfWeek: "Fri",
      month: "Oct",
      date: "22",
      hasColor: false),
  DaysModel(
      isToday: false,
      dayOfWeek: "Sat",
      month: "Oct",
      date: "23",
      hasColor: false),
  DaysModel(
      isToday: false,
      dayOfWeek: "Sun",
      month: "Oct",
      date: "24",
      hasColor: false),
];
