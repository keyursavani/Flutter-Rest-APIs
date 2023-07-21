import 'package:flutter/cupertino.dart';
import 'package:flutter_rest_api/API_With_StateManagement/model/post_method_model.dart';
import 'package:flutter_rest_api/API_With_StateManagement/services/post_method_service.dart';

class PostMethodProvider extends ChangeNotifier{
  bool loading = false;
  PostMethodService services = PostMethodService();
  late PostMethodModel _data;
  PostMethodModel get data => _data;

  getPostData(String title)async{
    loading = true;
    final response = await services.getPost(title);
    _data = response;
    loading = false;
    notifyListeners();
  }
}