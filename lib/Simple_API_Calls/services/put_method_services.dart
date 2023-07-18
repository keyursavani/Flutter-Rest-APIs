import 'dart:convert';

import 'package:http/http.dart' as http;

import '../provider/put_method_provider.dart';

Future<AlbumPut> fetchAlbum2() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
  );
  if (response.statusCode == 200) {
    return AlbumPut.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
Future<AlbumPut> updateAlbum(String title) async {
  final response = await http.put(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );

  if (response.statusCode == 200) {
    return AlbumPut.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to update album.');
  }
}