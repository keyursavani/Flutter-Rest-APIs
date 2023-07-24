import 'package:flutter/cupertino.dart';
import 'package:flutter_rest_api/API_With_StateManagement/model/delete_method_model.dart';
import 'package:flutter_rest_api/API_With_StateManagement/services/delete_method_services.dart';

class DeleteMethodProvider with ChangeNotifier{
  bool loading = false;
  DeleteMethodService service = DeleteMethodService();
   DeleteMethodModel? _data;

  DeleteMethodModel? get data => _data;

  getData(context) async{
    loading = true;
    final response = await service.getData(context);
    _data = response;
    loading = false;
    notifyListeners();
  }

  deleteData(String id) async {
    loading = true;
    final response = await service.deleteData(id);
    _data = response;
    loading = false;
    notifyListeners();
  }

}