import 'package:flutter/material.dart';
import 'package:flutter_rest_api/API_With_StateManagement/provider/get_method_provider.dart';

import 'API_With_StateManagement/screen/get_method_2_screen.dart';
import 'API_With_StateManagement/screen/get_method_screen.dart';
import 'Simple_API_Calls/constant/my_button.dart';
import 'Simple_API_Calls/screen/delete_method_screen.dart';
import 'Simple_API_Calls/screen/get_method_screen.dart';
import 'Simple_API_Calls/screen/get_method_screen2.dart';
import 'Simple_API_Calls/screen/post_method_screen.dart';
import 'Simple_API_Calls/screen/put_method_screen.dart';
import 'Simple_API_Calls/screen/web_socket_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GetMethodProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest API Tutorial"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Center(
                child: Align(
                  child: Text("Simple APIs Calls" ,style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: MyNextButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context){
                                  return GetMethodScreen();
                                })
                            );
                          },
                      name: "Get Method"
                  ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: MyNextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return GetMethod2Screen();
                              })
                          );
                        },
                        name: "Get Method List"
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: MyNextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return PostMethodScreen();
                              })
                          );
                        },
                        name: "Post Method"
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: MyNextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return PutMethodScreen();
                              })
                          );
                        },
                        name: "Put Method"
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: MyNextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return WebSocketScreen();
                              })
                          );
                        },
                        name: "Web Socket"
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: MyNextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return DeleteMethodScreen();
                              })
                          );
                        },
                        name: "Delete Method"
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Center(
                child: Align(
                  child: Text("APIs Call With StateManagement" ,style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: MyNextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return GetMethodScreenProvider();
                              })
                          );
                        },
                        name: "Post Method"
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: MyNextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return GetMethod2ScreenProvider();
                              })
                          );
                        },
                        name: "Check"
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
