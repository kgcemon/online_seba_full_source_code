import 'package:flutter/material.dart';

import '../const/my_app_color.dart';

class MyAppbar{
  myAppbar(){
    return AppBar(
      centerTitle: true,
      title: const Text("টিম খাগড়াছড়ি",
          style:
          TextStyle(fontWeight: FontWeight.bold)),
      actions: const [Icon(Icons.notifications), SizedBox(width: 15,)],
      backgroundColor: primaryColor,);
  }
}