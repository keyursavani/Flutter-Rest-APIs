import 'dart:convert';
import 'package:http/http.dart' as http;

import '../provider/delete_method_provider.dart';

Future<AlbumDelete> fetchAlbum3() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
  );

  if (response.statusCode == 200) {
    return AlbumDelete.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

Future<AlbumDelete> deleteAlbum(String id) async {
  final http.Response response = await http.delete(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  if (response.statusCode == 200) {
    return AlbumDelete.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to delete album.');
  }
}