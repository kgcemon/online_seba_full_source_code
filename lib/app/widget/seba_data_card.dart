import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:teamkhagrachari/app/all_screen/home/Controller/home_provider.dart';
import 'package:teamkhagrachari/app/const/my_app_color.dart';
import 'package:teamkhagrachari/app/widget/search_box.dart';
import 'package:url_launcher/url_launcher.dart';

import '../const/strings.dart';

class SebaDataCard extends StatelessWidget {
  List sebaList;

  SebaDataCard({super.key, required this.sebaList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchBox(),
        Expanded(
          child: Consumer<HomeProvider>(
            builder: (context, value, child) => ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7.0),
                      child: Card(
                        color: Colors.white,
                        child: ListTile(
                          trailing: InkWell(
                            onTap: () => callSystem(
                                "tel:${value.myList[index]['phonenumber']}"),
                            child: Lottie.asset('Images/call.json'),
                          ),
                          title: Text(value.myList[index]['name'],
                              style: const TextStyle(
                                  color: seconderyColor,
                                  fontWeight: FontWeight.bold)),
                          subtitle: Wrap(children: [
                            Text("${value.myList[index]['address']}"),
                            const SizedBox(height: 5, width: 5),
                            Text(
                              "$contactText ${value.myList[index]['phonenumber']}",
                              style: const TextStyle(
                                  color: seconderyColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: value.myList.length),
          ),
        ),
      ],
    );
  }

  Future<void> callSystem(String data) async {
    final Uri _url = Uri.parse(data);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
