// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../const/theme.dart' as style;
import 'package:qyre/models/days_model.dart';

class DaysAvailabiltyWidget extends StatelessWidget {
  const DaysAvailabiltyWidget({
    Key? key,
    required this.daysModel,
  }) : super(key: key);

  final DaysModel daysModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 62,
      constraints: BoxConstraints(
        minHeight: 0,
        // maxHeight: size.height * 0.1,
      ),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(daysModel.isToday ? "Today" : "",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: style.Colors.textGreyColor,
                  fontSize: 10,
                )),
            SizedBox(height: 5),
            Text(daysModel.dayOfWeek,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 12,
                )),
            SizedBox(height: 5),
            Text(daysModel.month,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 10,
                )),
            SizedBox(height: 5),
            Text(daysModel.date,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 16,
                )),
            SizedBox(height: 10),
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                color: daysModel.color,
                borderRadius: BorderRadius.circular(30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
