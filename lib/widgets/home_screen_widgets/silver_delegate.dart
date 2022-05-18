// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:qyre/models/days_model.dart';
import 'package:qyre/widgets/home_screen_widgets/over_laps_widget.dart';
import 'package:qyre/widgets/home_screen_widgets/days_availabilty_widget.dart';

class Delegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dummyList.length,
        itemBuilder: ((context, index) {
          var daysModel = dummyList[index];
          return overlapsContent == false
              ? DaysAvailabiltyWidget(daysModel: daysModel)
              : OverLapsAppBarWidget(daysModel: daysModel);
        }));
  }

  @override
  double get maxExtent => 120;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
