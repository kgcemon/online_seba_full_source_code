import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:teamkhagrachari/app/models/seba_items_model.dart';

import '../../../api_endpoint/allapiurl.dart';
class SebaItemLoadApi{

  Future<List<Seba_Items_Model>>sebaItemLoadApi()async{
    List<Seba_Items_Model> mylist = [];
    http.Response response = await http.get(seba_list_url);
    for (var element in jsonDecode(response.body)) {
      mylist.add(Seba_Items_Model.fromjson(element));
    }
    return mylist;
  }
}