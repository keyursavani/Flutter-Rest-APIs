import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/get_method_model.dart';

class GetMethodServices{
  Future<DataModel> getData(context) async {
    late DataModel data;
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/comments/5'),
      );
      if (response.statusCode == 200) {
        final item = json.decode(response.body);
        data = DataModel.fromJson(item);// Mapping json response to our data model
      } else {
        print('Error Occurred');
      }
    } catch (e) {
      print('Error Occurred'+e.toString());
    }
    return data;
  }
}