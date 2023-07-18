
import 'package:flutter/material.dart';

import '../model/get_method_model.dart';
import '../services/get_method_services.dart';


class GetMethodProvider with ChangeNotifier {
  late DataModel data;

  bool loading = false;
  Services services = Services();

  getPostData(context) async {
    loading = true;
    data = await services.getData(context);
    loading = false;
    notifyListeners();
  }
}