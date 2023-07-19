// class GetMethod2 {
//   GetMethod2({
//     int? albumId,
//     int? id,
//     String? title,
//     String? url,
//     String? thumbnailUrl,
//   })
//   {
//     _albumId = albumId;
//     _id = id;
//     _title = title;
//     _url = url;
//     _thumbnailUrl = thumbnailUrl;
//   }
//
//   GetMethod2.formJson(dynamic json) {
//     _albumId = json['albumId'];
//     _id = json['id'];
//     _title = json['title'];
//     _url = json['url'];
//     _thumbnailUrl = json['thumbnailUrl'];
//   }
//
//   int? _albumId;
//   int? _id;
//   String? _title;
//   String? _url;
//   String? _thumbnailUrl;
//
//   int? get albumId => _albumId;
//
//   int? get id => _id;
//
//   String? get title => _title;
//
//   String? get url => _url;
//
//   String? get thumbnailUrl => _thumbnailUrl;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['albumId'] = _albumId;
//     map['id'] = _id;
//     map['title'] = _title;
//     map['url'] = _url;
//     map['thumbnailUrl'] = _thumbnailUrl;
//     return map;
//   }
// }

class GetMethod2 {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  const GetMethod2({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,

  });

  factory GetMethod2.fromJson(Map<String, dynamic> json) {
    return GetMethod2(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );
  }
  Map<String , dynamic> toJson(){
    final map = <String , dynamic>{};
    map['id'] = id;
    map['userId'] = userId;
    map['title'] = title;
    map['completed'] = title;
    return map;
  }

}