// class DataModel {
//   int? postId;
//   int? id;
//   String? name;
//   String? email;
//   String? body;
//   DataModel({
//     this.postId,
//     this.id,
//     this.name,
//     this.email,
//     this.body,
// });
//
//    DataModel.fromJson(Map<String,dynamic> json){
//      postId = json['postId'];
//      id = json['id'];
//      name = json['name'];
//      email = json['email'];
//      body = json['body'];
//   }
//   Map<String , dynamic> toJson(){
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['postId'] = postId;
//     data['id'] = id;
//     data['name'] = name;
//     data['email'] = email;
//     data['body'] = body;
//      return data;
//   }
// }

class DataModel{
  DataModel({
    int? postId,
    int? id,
    String? name,
    String? email,
    String? body,
})
{
   _postId = postId;
   _id = id;
   _name = name;
   _email = email;
   _body = body;
}

  DataModel.fromJson(Map<String,dynamic> json){
    _postId = json['postId'];
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _body = json['body'];
}
  int? _postId;
  int? _id;
  String? _name = "";
  String? _email = "";
  String? _body = "";

  int? get postId => _postId;
  int? get id => _id;
  String? get name => _name;
  String? get email => _email;
  String? get body => _body;

  Map<String , dynamic> toJson(){
    final map = <String , dynamic>{};
    map['postId'] = _postId;
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['body'] = _body;
    return map;
  }

}