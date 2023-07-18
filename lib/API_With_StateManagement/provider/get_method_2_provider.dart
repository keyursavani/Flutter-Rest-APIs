import 'package:flutter/cupertino.dart';
import 'package:flutter_rest_api/API_With_StateManagement/model/get_method_2_model.dart';
import 'package:flutter_rest_api/API_With_StateManagement/services/get_method_2_services.dart';
import 'package:http/http.dart' as http;

class GetMethod2Provider with ChangeNotifier{
  late List<GetMethod2> data;

  bool loading = false;
  GetMethod2Services services = GetMethod2Services();

getPhotosData2(context) async{
  loading = true;
  data = await services.fetchPhotos(http.Client());
  loading = false;
  notifyListeners();
}
}