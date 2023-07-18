import 'dart:convert';
import 'package:http/http.dart' as http;
import '../provider/get_method_provider.dart';

Future<AlbumGet> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  if (response.statusCode == 200) {
    return AlbumGet.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}