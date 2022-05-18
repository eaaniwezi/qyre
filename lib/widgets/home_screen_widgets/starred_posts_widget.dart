// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../../const/theme.dart' as style;
import 'package:flutter_svg/flutter_svg.dart';

class StarredPostWidget extends StatelessWidget {
  const StarredPostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 93,
        width: double.infinity,
        decoration: BoxDecoration(
          color: style.Colors.lightGreyColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset("icons/stars.svg"),
            Text(
              "Posts that are extra relevant to you\ncan be marked with a star and will\nbe shown here for easy access.",
              style: TextStyle(
                color: style.Colors.textGreyColor,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
