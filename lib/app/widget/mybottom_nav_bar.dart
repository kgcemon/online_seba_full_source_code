import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teamkhagrachari/app/all_screen/home/Controller/home_provider.dart';

import '../const/my_app_color.dart';

class BottomNavBar {
  static bottonNavbar() {
    List<IconData> iconList = [
      Icons.home,
      Icons.bloodtype_rounded,
      Icons.person,
      Icons.help
    ];
    return Consumer<HomeProvider>(
      builder: (context, value, child) => AnimatedBottomNavigationBar(
        backgroundColor: primaryColor,
        activeColor: Colors.white,
        icons: iconList,
        activeIndex: value.selectedIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          value.indexChanger(index);
        },
        //other params
      ),
    );
  }

  static flotingBar() {
    return FloatingActionButton(
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () {},
      child: const Icon(
        Icons.email,
      ),
      //params
    );
  }
}
