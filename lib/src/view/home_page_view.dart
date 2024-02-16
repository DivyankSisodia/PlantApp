import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:plantapp/screens/Home/Chip_Widget.dart';
import 'package:plantapp/screens/Home/Plant_Card.dart';
import 'package:plantapp/src/screens/Home/home_header.dart';
import 'package:plantapp/src/screens/Home/search_widget.dart';
import '../../bottom_nav_bar.dart';
import '../constants/app_theme.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            height: 50,
            width: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Divider(
                    thickness: 3,
                    color: headingColor,
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 3,
                    color: headingColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Expanded(
                    child: Divider(
                      thickness: 3,
                      color: headingColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Icon(
              CupertinoIcons.bell_fill,
              size: 30,
              color: headingColor,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              HomeHeader(),
              Gap(15),
              SearchWidget(),
              ChipWidgets(),
              HomePlantGrid(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustombottomNavBar(),
    );
  }
}








