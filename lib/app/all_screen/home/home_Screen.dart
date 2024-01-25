import 'package:flutter/material.dart';
import 'package:teamkhagrachari/app/const/my_app_color.dart';
import 'package:teamkhagrachari/app/const/strings.dart';
import 'package:teamkhagrachari/app/widget/appbar.dart';
import 'package:teamkhagrachari/app/widget/main_category.dart';
import 'package:teamkhagrachari/app/widget/mybottom_nav_bar.dart';
import 'package:teamkhagrachari/app/widget/news_listview.dart';
import 'package:teamkhagrachari/app/widget/slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BottomNavBar.flotingBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar.bottonNavbar(),
      backgroundColor: seconderyColor,
      drawer: const Drawer(),
      appBar: MyAppbar().myAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(children: [
            MySlider.sliderImages(),
            const Text(
              services,
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
            const Divider(),
            MainCategory(),
            const Text(
              lastedNews,
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
