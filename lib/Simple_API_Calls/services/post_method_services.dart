import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../provider/post_method_provider.dart';

Future<AlbumPost> createAlbum(String title) async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );

  if (response.statusCode == 201) {
    return AlbumPost.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create album.');
  }
}