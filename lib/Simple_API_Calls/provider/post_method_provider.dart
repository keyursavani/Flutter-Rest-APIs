import 'package:flutter/animation.dart';

class AlbumPost{
  final int id;
  final String title;
  AlbumPost({
    required this.id,
    required this.title,
});
  factory AlbumPost.fromJson(Map<String , dynamic> json){
    return AlbumPost(
        id: json['id'],
        title: json['title'],
    );
  }
  Map<String , dynamic> toJson(){
    final map = <String ,dynamic>{};
    map['id'] = id;
    map['title'] = title;
    return map;
}
}