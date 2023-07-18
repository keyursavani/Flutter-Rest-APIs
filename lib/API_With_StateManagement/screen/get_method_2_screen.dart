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
    Provider.of<GetMethod2Provider>(context, listen: false).getPhotosData2;
  }
  @override
  Widget build(BuildContext context) {
    final postMdl = Provider.of<GetMethod2Provider>(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Method 2 List"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: postMdl.loading ? Center(
          child: Container(
            child: const CircularProgressIndicator(),
          ),
        )
            : GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: postMdl.data.length,
          itemBuilder: (context, index) {
            return Image.network(postMdl.data.first.thumbnailUrl);
          },
        ),
      ),
    );
  }
}