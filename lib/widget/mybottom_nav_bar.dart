import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:teamkhagrachari/colors/my_app_color.dart';

class BottomNavBar{
 static bottonNavbar(){
   List<IconData> iconList = [
     Icons.home,
     Icons.bloodtype_rounded,
     Icons.person,
     Icons.help
   ];
    return AnimatedBottomNavigationBar(
      backgroundColor: MyAppColor.primaryColor,
      icons: iconList,
      activeIndex: 1,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      onTap: (index) {},
      //other params
    );
  }

 static flotingBar(){
   return FloatingActionButton(
     backgroundColor: MyAppColor.primaryColor,
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
     onPressed: () {},
     child: const Icon(
       Icons.email,
     ),
     //params
   );
  }
}