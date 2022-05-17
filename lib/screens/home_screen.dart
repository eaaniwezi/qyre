// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:qyre/widgets/home_screen_widgets/extra_blocks_widget.dart';

import '../models/days_model.dart';
import 'package:flutter/material.dart';
import '../../const/theme.dart' as style;
import 'package:qyre/models/extras_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qyre/models/production_model.dart';
import 'package:qyre/widgets/home_screen_widgets/production_widget.dart';
import 'package:qyre/widgets/home_screen_widgets/more_details_widget.dart';
import 'package:qyre/widgets/home_screen_widgets/job_offers_widget.dart';

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
        children: [
          SizedBox(height: size.height * 0.3),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [MoreDetailsWidget(), MoreDetailsWidget()],
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
          Padding(
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
          ),
          SizedBox(
            height: size.height * 0.02,
          )
        ],
      ),
      //     body: CustomScrollView(
      //   slivers: [
      //     SliverAppBar(
      //       pinned: true,
      //       floating: true,
      //       snap: true,
      //       expandedHeight: size.height * 0.2,
      //       backgroundColor: Colors.transparent,
      //       title: Text("My Availabilty",
      //           style:
      //               TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
      //       flexibleSpace: ListView.builder(
      //         scrollDirection: Axis.horizontal,
      //         itemCount: dummyList.length,
      //         itemBuilder: ((context, index) {
      //           var daysModel = dummyList[index];
      //           return DaysAvailabiltyWidget(daysModel: daysModel);
      //         }),
      //       ),
      //       // forceElevated: true,
      //       // bottom: PreferredSize(
      //       //   preferredSize: Size.fromHeight(size.height * 0.2),
      //       //   child: Expanded(
      //       //     child: ListView.builder(
      //       //       scrollDirection: Axis.horizontal,
      //       //       itemCount: dummyList.length,
      //       //       itemBuilder: ((context, index) {
      //       //         var daysModel = dummyList[index];
      //       //         return DaysAvailabiltyWidget(daysModel: daysModel);
      //       //       }),
      //       //     ),
      //       //   ),
      //       // ),
      //     ),
      //     SliverList(
      //         delegate: SliverChildListDelegate([
      //       Container(height: size.height, color: Colors.pink),
      //       Container(height: size.height, color: Colors.orange),
      //     ]))
      //   ],
      // )
      // body: CustomScrollView(
      //   // shrinkWrap: true,
      //   slivers: [
      //     SliverAppBar(
      //       leading: Text("data"),
      //       pinned: true,
      //       backgroundColor: Colors.transparent,
      //       expandedHeight: size.height * 0.19,
      //       flexibleSpace: FlexibleSpaceBar(
      //         title: Row(
      //           children: [
      //             Icon(
      //               Icons.abc_outlined,
      //             ),
      //           ],
      //         ),

      //         // title: Text('Goa', textScaleFactor: 1),
      //         background: Column(
      //           children: [
      //             // Align(
      //             //   alignment: Alignment.topLeft,
      //             //   child: Text(
      //             //     "My Availabilty",
      //             //   ),
      //             // ),
      //             SizedBox(height: size.height * 0.05),
      //             Expanded(
      //               child: ListView.builder(
      //                 scrollDirection: Axis.horizontal,
      //                 itemCount: dummyList.length,
      //                 itemBuilder: ((context, index) {
      //                   var daysModel = dummyList[index];
      //                   return DaysAvailabiltyWidget(daysModel: daysModel);
      //                 }),
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //     SliverToBoxAdapter(
      //       child: Text("jhjergshsijhdgijdsrijgoijsadofjkosdjk"),
      //     ),
      //     //!
      //     SliverList(
      //       delegate: SliverChildBuilderDelegate(
      //         (context, index) {
      //           return Text("dsgfdsg");
      //         },
      //       ),
      //     ),
      //   ],
      // ),
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

class DaysAvailabiltyWidget extends StatelessWidget {
  const DaysAvailabiltyWidget({
    Key? key,
    required this.daysModel,
  }) : super(key: key);

  final DaysModel daysModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: 62,
      constraints: BoxConstraints(minHeight: 10, maxHeight: 50),
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
                  color: style.Colors.greyColor,
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
