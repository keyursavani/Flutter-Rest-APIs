
import 'package:flutter/material.dart';

import '../model/get_method_model.dart';
import '../services/get_method_services.dart';


class GetMethodProvider with ChangeNotifier {

  bool loading = false;
  GetMethodServices services = GetMethodServices();
  late DataModel _data;
  DataModel get data => _data;

  getPostData(context) async {
    loading = true;
    final response = await services.getData(context);
    _data = response;
    loading = false;
    notifyListeners();
  }
}