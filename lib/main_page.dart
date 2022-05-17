// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:qyre/screens/aux_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qyre/screens/home_screen.dart';
import 'package:qyre/screens/notification_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;
  final pages = [
    const HomeScreen(),
    const AuxScreen(),
    const NotificationScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: SvgPicture.asset(
                    "icons/home.svg",
                    height: 25,
                    width: 25,
                    color: pageIndex == 0 ? Colors.white : Colors.white10,
                  ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: SvgPicture.asset(
                    "icons/menu.svg",
                    height: 25,
                    width: 25,
                    color: pageIndex == 1 ? Colors.white : Colors.white10,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          pageIndex = 2;
                        });
                      },
                      icon: SvgPicture.asset(
                        "icons/bell.svg",
                        height: 25,
                        width: 25,
                        color: pageIndex == 2 ? Colors.white : Colors.white10,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                          constraints:
                              BoxConstraints(minHeight: 15, minWidth: 15),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.all(001),
                            child: Center(
                              child: Text(
                                "5",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ),
                          )),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
