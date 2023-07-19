import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rest_api/API_With_StateManagement/model/get_method_2_model.dart';
import 'package:flutter_rest_api/API_With_StateManagement/provider/get_method_2_provider.dart';
import 'package:flutter_rest_api/Simple_API_Calls/screen/get_method_screen2.dart';
import 'package:provider/provider.dart';

class GetMethod2StateScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return GetMethod2StateScreenState();
  }
}
class GetMethod2StateScreenState extends State<GetMethod2StateScreen>{
  @override
  void initState() {
    super.initState();
    Provider.of<GetMethod2Provider>(context, listen: false).getAllDatas();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Method 2 List"),
      ),
      body: Consumer<GetMethod2Provider>(
        builder: (context, value, child) {
          // If the loading it true then it will show the circular progressbar
          if (value.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          // If loading is false then this code will show the list of todo item
          final todos = value.data;
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return ListTile(
                leading: CircleAvatar(
                  child: Text(todo.id.toString()),
                ),
                title: Text(
                  todo.title,
                  style: TextStyle(
                    color: todo.completed ? Colors.grey : Colors.black,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}