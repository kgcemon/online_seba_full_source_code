import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teamkhagrachari/app/all_screen/home/Controller/category_click_logic.dart';
import 'package:teamkhagrachari/app/all_screen/home/Controller/home_provider.dart';
import 'package:teamkhagrachari/app/api_endpoint/allapiurl.dart';
import 'package:teamkhagrachari/app/const/my_app_color.dart';
import 'package:teamkhagrachari/app/const/strings.dart';

class MainCategory extends StatelessWidget {
  const MainCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, value, child) => GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: value.sebaList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 5.0 / 2.5),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            clickLogic(value, context, index);
          },
          child: Card(
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            shadowColor: primaryColor,
            surfaceTintColor: Colors.white,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Expanded(
                    child: CachedNetworkImage(
                      imageUrl: "$mainurl${value.sebaList[index].images}",
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                          ),
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      value.sebaList[index].sebaname,
                      style: const TextStyle(fontFamily: fontsKey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}
