import 'dart:convert';

import 'package:flutter_rest_api/API_With_StateManagement/model/post_method_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_rest_api/API_With_StateManagement/model/put_method_model.dart';

class PutMethodService{
  late PutMethodModel data;

  Future<PutMethodModel> getData() async{
    // const url = "https://jsonplaceholder.typicode.com/albums/1";
    // final uri = Uri.parse(url);
    // final response = await http.get(uri);
    // final body = response.body;
    // final json = jsonDecode(body);
    // final result = json;
    // data = PutMethodModel.fromJson(result);

    final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/albums/1"));
    if (response.statusCode == 200) {
      final result = PutMethodModel.fromJson(jsonDecode(response.body));
      data = result;
      return data;
    } else {
      throw Exception('Failed to load album');
    }
    // final result = PutMethodModel.fromJson(jsonDecode(response.body));
    // data = result;
    // return data;
  }

  Future<PutMethodModel> updateData(String title) async{
    final response = await http.put(
        Uri.parse("https://jsonplaceholder.typicode.com/albums/1"),
        headers :<String , String>{
     'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String , String>{
         'title':title,
    }),
    );
    final result = PutMethodModel.fromJson(jsonDecode(response.body));
  data = result;
  return data;
  }
}