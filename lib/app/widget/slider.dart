import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';
import 'package:provider/provider.dart';
import 'package:teamkhagrachari/app/all_screen/home/Controller/home_provider.dart';
import 'package:teamkhagrachari/app/api_endpoint/allapiurl.dart';

class MySlider {
  static sliderImages() {
    return AspectRatio(
      aspectRatio: 5 / 2.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Consumer<HomeProvider>(
          builder: (context, value, child) => ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: value.sliderImagesList.isNotEmpty
                  ? Carousel(
                      dotSize: 0,
                      dotBgColor: Colors.transparent,
                      images: List.generate(
                        growable: true,
                        value.sliderImagesList.length,
                            (index) =>
                            CachedNetworkImage(
                              imageUrl: "$mainurl${value.sliderImagesList[index]['image_url']}",
                              imageBuilder:
                                  (context, imageProvider) =>
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                              errorWidget:
                                  (context, url, error) =>
                              const Icon(Icons.error),
                            ),
                      ), )
                  : const Center(child: Text("loading"))),
        ),
      ),
    );
  }
}
