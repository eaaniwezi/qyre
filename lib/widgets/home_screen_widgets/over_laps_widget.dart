// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../const/theme.dart' as style;
import 'package:qyre/models/days_model.dart';

class OverLapsAppBarWidget extends StatelessWidget {
  const OverLapsAppBarWidget({
    Key? key,
    required this.daysModel,
  }) : super(key: key);

  final DaysModel daysModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Container(
        width: 60,
        height: 36,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(4)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(daysModel.isToday ? "Today " : "",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: style.Colors.textGreyColor,
                      fontSize: 10,
                    )),
                Text(daysModel.dayOfWeek,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 10,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    color: daysModel.color,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Text(" " + daysModel.date + " " + daysModel.month,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 10,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
