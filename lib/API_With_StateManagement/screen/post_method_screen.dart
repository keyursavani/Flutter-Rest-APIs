import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rest_api/API_With_StateManagement/provider/post_method_provider.dart';
import 'package:provider/provider.dart';


class PostMethodScreenProvider extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return PostMethodScreenProviderState();
  }
}
class PostMethodScreenProviderState extends State<PostMethodScreenProvider> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<PostMethodProvider>(context);
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Post Method"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: (provider.data == null)
                ? buildColumn()
                : buildFutureBuilder(),
          ),
        )
    );
  }

  Column buildColumn() {
    var provider = Provider.of<PostMethodProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Enter Title'),
        ),
        SizedBox(height: 30,),
        ElevatedButton(
          onPressed: () {
            setState(() {
              provider.getPostData(_controller.text.toString());
            });
          },
          child: const Text('Create Data'),
        ),
      ],
    );
  }

  buildFutureBuilder() {
    return Consumer<PostMethodProvider>(
        builder: (context, value, child) {
          if (value.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          // If loading is false then this code will show the list of todo item
          final todos = value.data;
          return Text(todos!.title.toString());
        });
  }
}