import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rest_api/API_With_StateManagement/provider/put_method_provider.dart';
import 'package:provider/provider.dart';

class PutMethodCheckScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Consumer<PutMethodProvider>(
        builder: (context ,value , child){
          return Center(
            child: Text(value.data! != null && value.data!.title != null? value.data!.title!.toString() : ""),
          );
        },
      ),
    );
  }
}