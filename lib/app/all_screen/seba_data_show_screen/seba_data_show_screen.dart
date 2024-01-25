import 'package:flutter/material.dart';
import 'package:teamkhagrachari/app/widget/appbar.dart';
import 'package:teamkhagrachari/app/widget/seba_data_card.dart';

class Seba_Data_Show_Data extends StatelessWidget {
  List sebaList = [];

  Seba_Data_Show_Data({super.key, required this.sebaList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar().myAppbar(),
      body: SebaDataCard(sebaList: sebaList,),
    );
  }
}
