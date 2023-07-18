class AlbumDelete{
  final int id;
  final String title;
  AlbumDelete({
    required this.id,
    required this.title,
});
  factory AlbumDelete.fromJson(Map<String , dynamic> json){
    return AlbumDelete(
        id: json['id'],
        title: json['title']);
  }
  Map<String , dynamic> toJson(){
    final map = <String , dynamic>{};
    map['id'] = id;
    map['title'] = title;
    return map;
  }
}