import 'dart:convert';

class Seba_Items_Model {
  String id;
  String sebaname;
  String images;
  List fulldata;

  Seba_Items_Model(
      {required this.id,
      required this.sebaname,
      required this.images,
      required this.fulldata});

  factory Seba_Items_Model.fromjson(Map<String, dynamic> json){
    return
    Seba_Items_Model(id: json['id'] ?? '',
        sebaname: json['sebaname'] ?? '',
        images: json['images'] ?? '',
        fulldata:  jsonDecode(json['fulldata'])?? []
    );
  }
}
