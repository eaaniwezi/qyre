// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qyre/models/extras_model.dart';
import 'package:qyre/models/production_model.dart';
import 'package:qyre/widgets/home_screen_widgets/silver_delegate.dart';
import 'package:qyre/widgets/home_screen_widgets/production_widget.dart';
import 'package:qyre/widgets/home_screen_widgets/more_details_widget.dart';
import 'package:qyre/widgets/home_screen_widgets/job_offers_widget.dart';
import 'package:qyre/widgets/home_screen_widgets/extra_blocks_widget.dart';
import 'package:qyre/widgets/home_screen_widgets/starred_posts_widget.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 0,
            backgroundColor: Colors.white.withOpacity(0.8),
            title: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 1.0),
              child: Text(
                "My Availability",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: Delegate(),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MoreDetailsWidget(),
                  MoreDetailsWidget(),
                  SizedBox(width: 20)
                ],
              ),
            ),
            SizedBox(height: 25),
            headerTextWidget(title: "Today’s productions"),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: productionDummyList.length,
                itemBuilder: ((context, index) {
                  var productionModel = productionDummyList[index];
                  return ProductionWidget(productionModel: productionModel);
                })),
            SizedBox(
              height: size.height * 0.2,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dummyExtraModelList.length,
                  itemBuilder: ((context, index) {
                    var extraModel = dummyExtraModelList[index];
                    return ExtraBlocksWidget(extraModel: extraModel);
                  })),
            ),
            SizedBox(height: 25),
            headerTextWidget(title: "My job offers"),
            JobOffersWidget(),
            SizedBox(height: 25),
            headerTextWidget(title: "Starred posts"),
            StarredPostWidget(),
            SizedBox(
              height: size.height * 0.02,
            )
          ]))
        ],
      ),
    );
  }

  headerTextWidget({required String title}) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
