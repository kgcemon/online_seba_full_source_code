import 'package:flutter/material.dart';
import 'package:teamkhagrachari/app/all_screen/seba_data_show_screen/seba_data_show_screen.dart';

clickLogic(value, BuildContext context, int index) {
  value.searchList = value.sebaList[index].fulldata;
  value.myList = value.sebaList[index].fulldata;
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Seba_Data_Show_Data(
          sebaList: value.sebaList[index].fulldata,
        ),
      ));
}