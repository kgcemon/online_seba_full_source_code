import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:teamkhagrachari/app/const/strings.dart';
import 'package:teamkhagrachari/app/widget/appbar.dart';

class FullNews extends StatelessWidget {
  String title;
  String date;
  String content;
  String thumbnail;

  FullNews({
    Key? key, // Added Key parameter
    required this.date,
    required this.content,
    required this.thumbnail,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar().myAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: fontsKey,
                ),
              ),
              const SizedBox(height: 15),
              Image.network(
                thumbnail,
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Text(
                date,
                style: const TextStyle(color: Colors.black38),
              ),
              const SizedBox(height: 10),

              HtmlWidget(content),

            ],
          ),
        ),
      ),
    );
  }
}
