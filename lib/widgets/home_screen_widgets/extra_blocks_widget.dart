// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:qyre/models/extras_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExtraBlocksWidget extends StatelessWidget {
  const ExtraBlocksWidget({
    Key? key,
    required this.extraModel,
  }) : super(key: key);

  final ExtraModel extraModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 10),
      child: Container(
        height: 140,
        width: 110,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: extraModel.backgroundColor,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(extraModel.img),
              SizedBox(height: 10),
              Text(
                extraModel.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              Text(
                extraModel.subTitle,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
