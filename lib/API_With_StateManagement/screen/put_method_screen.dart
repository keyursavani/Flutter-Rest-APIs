import 'package:flutter/material.dart';
import 'package:flutter_rest_api/API_With_StateManagement/model/put_method_model.dart';
import 'package:flutter_rest_api/API_With_StateManagement/provider/put_method_provider.dart';
import 'package:provider/provider.dart';

class PutMethodScrrenProvider extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PutMethodScreenProviderState();
  }
}

class PutMethodScreenProviderState extends State<PutMethodScrrenProvider>{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<PutMethodProvider>(context).getData();
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text("Put Method"),
     ),
     body: Consumer<PutMethodProvider>(
       builder: (context , value , child){
         if (value.loading) {
           return const Center(
             child: CircularProgressIndicator(),
           );
         }
         return Center(
           child: Text(provider.data.title.toString()),
         );
       },
     )
   );
  }
}