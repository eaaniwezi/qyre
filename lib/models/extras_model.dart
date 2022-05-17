// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

import 'package:qyre/const/theme.dart';

class ExtraModel {
  final String img;
  final String title;
  final String subTitle;
  final List<Color> backgroundColor;
  ExtraModel({
    required this.img,
    required this.title,
    required this.subTitle,
    required this.backgroundColor,
  });
}

List<ExtraModel> dummyExtraModelList = [
  ExtraModel(
      img: "icons/network.svg",
      title: "My network",
      subTitle: "Connect and grow your network",
      backgroundColor: [Color(0xff3465C3), Color(0xff5785DE)]),
  ExtraModel(
      img: "icons/Qyre.svg",
      title: "Quick hire",
      subTitle: "Hire someone quickly today",
      backgroundColor: [Color(0xfffEC4E27), Color(0xfffF47E61)]),
  ExtraModel(
      img: "icons/Subtract.svg",
      title: "My CV",
      subTitle: "Keep your CV updated to get relevant offers",
      backgroundColor: [Color(0xfff6B34C3), Color(0xfff8E5EDB)])
];
