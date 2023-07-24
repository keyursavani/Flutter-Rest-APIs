

import 'package:flutter/cupertino.dart';
import 'package:flutter_rest_api/API_With_StateManagement/model/put_method_model.dart';
import 'package:flutter_rest_api/API_With_StateManagement/services/put_method_services.dart';

class PutMethodProvider with ChangeNotifier{

  bool loading = false;
  PutMethodService service = PutMethodService();
    PutMethodModel?_data;
  PutMethodModel? get data=> _data;

  getData(context) async{
    loading = true;
    final response = await service.getData(context);
    _data = response;
    loading = false;
    notifyListeners();
  }

  updateData(String title) async {
    loading = true;
    final response = await service.updateData(title);
    _data = response;
    loading = false;
    notifyListeners();
  }

}