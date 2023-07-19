import 'dart:convert';

import 'package:flutter_rest_api/API_With_StateManagement/model/get_method_2_model.dart';
import 'package:http/http.dart' as http;



class GetMethod2Services{

  static Future<List<GetMethod2>> fetchUser() async {

    const url = "https://jsonplaceholder.typicode.com/todos";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json as List<dynamic>;
    final users = results.map((e) {
      return GetMethod2.fromJson(e);
    }).toList();
    return users;
  }
}
