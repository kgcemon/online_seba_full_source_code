import 'package:flutter/material.dart';
import 'package:teamkhagrachari/widget/appbar.dart';

class FullNews extends StatelessWidget {
  String title;
  String content;
  String thumbnail;

  FullNews(
      {super.key,
      required this.content,
      required this.thumbnail,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar().myAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'myfont'),
              ),
              const SizedBox(height: 15),
              Image.network(thumbnail,
                  height: 220, width: double.infinity, fit: BoxFit.cover),
              const SizedBox(height: 15),
              Text(content),
            ],
          ),
        ),
      ),
    );
  }
}
