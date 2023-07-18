class AlbumPut{
  final int id;
  final String title;
  AlbumPut({
    required this.id,
    required this.title,
  });
  factory AlbumPut.fromJson(Map<String , dynamic> json){
    return AlbumPut(
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