
import 'package:flutter/material.dart';
import 'package:teamkhagrachari/colors/my_app_color.dart';
import 'package:teamkhagrachari/widget/appbar.dart';
import 'package:teamkhagrachari/widget/main_category.dart';
import 'package:teamkhagrachari/widget/mybottom_nav_bar.dart';
import 'package:teamkhagrachari/widget/news_listview.dart';
import 'package:teamkhagrachari/widget/slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BottomNavBar.flotingBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar.bottonNavbar(),
      backgroundColor: MyAppColor.seconderyColor,
      drawer: const Drawer(),
      appBar: MyAppbar().myAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(children: [
            MySlider.sliderImages(),
            const Text(
              "সার্ভিস সমুহ",
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
            const Divider(),
            MainCategory(),
            const Text(
              "সর্বশেষ সংবাদ",
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
            const Divider(),
            const NewsListView()
          ]),
        ),
      ),
    );
  }
}
