// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import '../models/days_model.dart';
import 'package:flutter/material.dart';
import '../../const/theme.dart' as style;
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [],
      ),
    );
  }
}
