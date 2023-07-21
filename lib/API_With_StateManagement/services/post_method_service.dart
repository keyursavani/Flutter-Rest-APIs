
import 'dart:convert';

import 'package:flutter_rest_api/API_With_StateManagement/model/post_method_model.dart';
import 'package:http/http.dart' as http;

class PostMethodService{
  Future<PostMethodModel> getPost(String title) async {
    late PostMethodModel data;
    final response = await http.post(
        Uri.parse("https://jsonplaceholder.typicode.com/albums"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );
    final body =response.body;
    final json = jsonDecode(body);
    final result = json;
    data =   PostMethodModel.fromJson(result);
    return data;
  }
}