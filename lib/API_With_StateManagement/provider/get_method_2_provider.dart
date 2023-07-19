import 'package:flutter/cupertino.dart';
import 'package:flutter_rest_api/API_With_StateManagement/model/get_method_2_model.dart';
import 'package:flutter_rest_api/API_With_StateManagement/services/get_method_2_services.dart';
import 'package:http/http.dart' as http;

class GetMethod2Provider with ChangeNotifier{

  bool loading = false;
  GetMethod2Services services = GetMethod2Services();
  List<GetMethod2> _data = [];
  List<GetMethod2> get data => _data;

  Future<void> getAllDatas() async {
    loading = true;
    notifyListeners();

    final response = await GetMethod2Services.fetchUser();

    _data = response;
    loading = false;
    notifyListeners();
  }
}