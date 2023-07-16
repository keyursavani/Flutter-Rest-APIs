import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class GetMethodProvider extends ChangeNotifier{
  GetMethodProvider({
    int? userId,
    int? id,
    String? title,
})
  {
    _userId = userId;
    _id = id;
    _title = title;
  }
  GetMethodProvider.fromJson(dynamic json){
    _userId = json['userId'];
    _id = json['id'];
    _title = json['title'];
  }
  int? _userId;
  int? _id;
  String? _title;

  int? get userId => _userId;
  int? get id => _id;
  String? get title => _title;

   Map<String , dynamic> toJson(){
     final map = <String , dynamic>{};
     map['userId'] = _userId;
     map['id'] = _id;
     map['title'] = _title;
     return map;
   }
}

Future<GetMethodProvider> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  if (response.statusCode == 200) {
    return GetMethodProvider.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}