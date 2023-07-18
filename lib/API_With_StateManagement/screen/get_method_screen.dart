import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rest_api/API_With_StateManagement/provider/get_method_provider.dart';
import 'package:flutter_rest_api/API_With_StateManagement/screen/get_method_2_screen.dart';
import 'package:provider/provider.dart';

class GetMethodScreenProvider extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GetMethodScreenProviderState();
  }
}
class GetMethodScreenProviderState extends State<GetMethodScreenProvider>{
  @override
  void initState() {
    super.initState();
    Provider.of<GetMethodProvider>(context, listen: false).getPostData(context);
  }
  @override
  Widget build(BuildContext context) {
    final postMdl = Provider.of<GetMethodProvider>(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Method"),
      ),
      body:Container(
        padding: const EdgeInsets.all(20),
        child: postMdl.loading
            ? Center(
          child: Container(
            child: const CircularProgressIndicator(),
          ),
        )
            :
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40, bottom: 20),
              child: Text(
                postMdl.data.name ?? "",
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              child: Text(
                postMdl.data.body ?? "",
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return GetMethod2ScreenProvider();
                  })
                );
              },
              child: const Text('Update Data'),
            ),
          ],
        ),

      ),
    );
  }
}