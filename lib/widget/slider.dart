import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';

class MySlider {
  static sliderImages() {
    return const SizedBox(
      height: 200.0,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Carousel(
            dotSize: 0,
            dotBgColor: Colors.transparent,
            images: [
              NetworkImage(
                  'https://ournewsbd.net/wp-content/uploads/2023/04/Khagrachari-name-khagra-pic-15-04-2023.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
