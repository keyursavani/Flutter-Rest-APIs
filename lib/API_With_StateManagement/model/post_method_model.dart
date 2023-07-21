class PostMethodModel{
  PostMethodModel({
    int? id,
    String? title,
})
{
  _id = id;
  _title = title;
}

PostMethodModel.fromJson(Map<String, dynamic> json){
    _id = json['id'];
    _title = json['title'];
}

Map<String , dynamic> toJson(){
    final map = <String ,dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    return map;
}
  int? _id;
  String? _title;

  int? get id => _id;
  String? get title => _title;

}