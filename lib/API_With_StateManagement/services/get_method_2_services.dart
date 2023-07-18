import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_rest_api/API_With_StateManagement/model/get_method_2_model.dart';
import 'package:http/http.dart' as http;



class GetMethod2Services{

 late List<GetMethod2> data;

  Future<List<GetMethod2>> fetchPhotos(http.Client client) async {
    final response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
   data = compute(parsePhotos, response.body) as List<GetMethod2>;
    return data;
  }

  List<GetMethod2> parsePhotos(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
 data = parsed.map<GetMethod2>((json) => GetMethod2.fromJson(json)).toList();
    return data;
  }
}
