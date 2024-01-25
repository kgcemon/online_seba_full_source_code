import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teamkhagrachari/app/all_screen/home/Controller/home_provider.dart';
import 'package:teamkhagrachari/app/const/strings.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(13.0),
      child: Consumer<HomeProvider>(
        builder: (context, value, child) =>  TextField(
          onChanged: value.searchItems,
          minLines: 1,
          decoration: const InputDecoration(
            hintText: searchText,
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            contentPadding: EdgeInsets.symmetric(vertical: 3.0),
          ),
        ),
      ),
    );
  }
}
