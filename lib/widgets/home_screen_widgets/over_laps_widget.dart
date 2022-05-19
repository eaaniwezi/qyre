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
      color: Colors.white.withOpacity(0.9),
      child: Container(
        constraints: BoxConstraints(minWidth: 80),
        margin: EdgeInsets.only(left: 15, bottom: 15, right: 0),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(4)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                daysModel.hasColor
                    ? Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: daysModel.color,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      )
                    : Text(""),
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
