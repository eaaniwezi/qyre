// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../const/theme.dart' as style;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MoreDetailsWidget extends StatelessWidget {
  const MoreDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 136,
        width: 300,
        decoration: BoxDecoration(
            color: style.Colors.lightGreyColor,
            borderRadius: BorderRadius.circular(4)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  " Complete your profile to optimize\n your exposure in job searches.",
               
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
              LinearPercentIndicator(
                width: 270,
                lineHeight: 14.0,
                percent: 0.5,
                linearStrokeCap: LinearStrokeCap.butt,
                backgroundColor: Colors.white,
                progressColor: style.Colors.blueColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Complete profile ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  SvgPicture.asset("icons/arrow.svg")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
