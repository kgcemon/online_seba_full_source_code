import 'package:flutter/material.dart';
import 'package:teamkhagrachari/all_screen/home/datasource/news_load_from_api.dart';
import 'package:teamkhagrachari/models/news_model.dart';

class HomeProvider extends ChangeNotifier{
  HomeProvider(){
    loadNews();
  }

  List<NewsModel> newList = [];

  loadNews()async{
    newList = await NewsLoad().loadNews();
    notifyListeners();
  }

}