import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:teamkhagrachari/app/all_screen/home/datasource/news_load_from_api.dart';
import 'package:teamkhagrachari/app/models/news_model.dart';
import '../../../api_endpoint/allapiurl.dart';
import '../../../models/seba_items_model.dart';
import '../datasource/SebaItemLoadApi.dart';
import 'package:http/http.dart' as http;

class HomeProvider extends ChangeNotifier {
  HomeProvider() {loadNews();
  loadSeba();
  loadSlider();
  }

  int selectedIndex = 0;
  List<NewsModel> newList = [];
  List<Seba_Items_Model> sebaList = [];
  List sliderImagesList = [];
  List searchList = [];
  List myList = [];
  loadNews() async {
    newList = await NewsLoad().loadNews();
    notifyListeners();
  }
  indexChanger(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  loadSeba() async {
    sebaList = await SebaItemLoadApi().sebaItemLoadApi();
    notifyListeners();
  }

   searchItems(String query) {
    myList = searchList.where((element) =>
    element['name'].toString().toLowerCase().contains(query.toLowerCase()) ||
        element['address'].toString().toLowerCase().contains(query.toLowerCase()) ||
        element['phoneNumber'].toString().toLowerCase().contains(query.toLowerCase())
    ).toList();
    notifyListeners();
  }

  loadSlider()async{
    http.Response response = await http.get(sliderImages_url);
    sliderImagesList = jsonDecode(response.body);
    print(sliderImagesList[0]['image_url']);
    notifyListeners();
  }

}
