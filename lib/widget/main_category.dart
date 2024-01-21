import 'package:flutter/material.dart';

class MainCategory extends StatelessWidget {
  MainCategory({super.key});

  List<Map<String, dynamic>> allItems = [
    {
      "img":
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGU1S792hiMxIPix_KgBH9ViLpsvNYD8OH8BHzU4WW8Q&s',
      "name": 'হাসপাতাল সমুহ'
    },
    {
      "img":
          'https://static.vecteezy.com/system/resources/previews/021/827/100/original/emergency-ambulance-car-medical-vehicle-illustration-png.png',
      "name": 'এযাম্বূলেন্স সার্ভিস'
    },
    {
      "img":
          'https://img.freepik.com/free-vector/blood-donation-symbol-with-hand-blood-bag_1308-115904.jpg',
      "name": 'ব্লাড ডোনার'
    },
    {
      "img":
          'https://i.pinimg.com/originals/8e/f8/55/8ef855f46702650f9c4f529d537d7d97.jpg',
      "name": 'শিক্ষা প্রতিষ্ঠান'
    },
    {
      "img": 'https://img.lovepik.com/element/40159/8653.png_1200.png',
      "name": 'বিশেষজ্ঞ ডাক্তার'
    },
    {
      "img": 'https://img.lovepik.com/element/40159/8653.png_1200.png',
      "name": 'বিশেষজ্ঞ ডাক্তার'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: allItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 5.0 / 5),
      itemBuilder: (context, index) => Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadowColor: Colors.white,
          surfaceTintColor: Colors.white,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Expanded(child: Image.network(allItems[index]['img'])),
                FittedBox(
                    child: Text(
                  allItems[index]['name'],
                  style: const TextStyle(fontFamily: 'myfont'),
                ))
              ],
            ),
          ),),
    );
  }
}
