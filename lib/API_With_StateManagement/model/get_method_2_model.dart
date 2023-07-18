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
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  const GetMethod2({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory GetMethod2.fromJson(Map<String, dynamic> json) {
    return GetMethod2(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }
}