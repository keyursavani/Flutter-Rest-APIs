import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rest_api/API_With_StateManagement/provider/get_method_provider.dart';
import 'package:provider/provider.dart';

class GetMethodCheckScreenProvider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provide = Provider.of<GetMethodProvider>(context);
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text(provide.data.name!.isNotEmpty || provide.data.name! != null  ? provide.data.name.toString() : ""),
      ),
    );
  }
}