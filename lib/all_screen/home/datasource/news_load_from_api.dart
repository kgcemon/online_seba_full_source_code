import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:teamkhagrachari/api_endpoint/allapiurl.dart';
import 'package:teamkhagrachari/models/news_model.dart';
class NewsLoad{
 Future<List<NewsModel>> loadNews() async {
   List<NewsModel> myList = [];
    http.Response response = await http.get(ApiUrl.news_api_url);
    List apiLIst = jsonDecode(response.body);
    for (var element in apiLIst) {
      myList.add(NewsModel.fromJson(element));
    }
   return myList;
 }
}