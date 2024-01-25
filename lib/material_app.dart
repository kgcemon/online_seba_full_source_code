import 'package:flutter/material.dart';
import 'package:teamkhagrachari/app/all_screen/home/home_Screen.dart';
import 'package:teamkhagrachari/app/const/my_app_color.dart';

class TeamKhagrachari extends StatelessWidget {
  const TeamKhagrachari({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme:  InputDecorationTheme(
          focusedBorder: inputData(),
          enabledBorder: inputData(),
          border: inputData(),
        ),
      ),
      home: const HomeScreen(),
    );
  }

  inputData(){
    return const OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(20)));
  }
}
