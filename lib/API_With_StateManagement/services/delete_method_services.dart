import 'dart:convert';

import '../model/delete_method_model.dart';
import 'package:http/http.dart' as http;

class DeleteMethodService{

  late DeleteMethodModel data;

  Future<DeleteMethodModel> getData(context) async{
    final response =  await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums/1"));
    final result = DeleteMethodModel.fromJson(jsonDecode(response.body));
     data = result;
     return data;
  }

  Future<DeleteMethodModel> deleteData(String id) async {
    final response = await http.delete(Uri.parse("https://jsonplaceholder.typicode.com/albums/$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    final result = DeleteMethodModel.fromJson(jsonDecode(response.body));
    data = result;
    return data;
  }
}