import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../provider/post_method_provider.dart';
import '../services/post_method_services.dart';

class PostMethodScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PostMethodScreenState();
  }
}
class PostMethodScreenState extends State<PostMethodScreen>{
  final TextEditingController _controller = TextEditingController();
  Future<AlbumPost>? _futureAlbum;

  @override
  void initState() {
    super.initState();
    // _futureAlbum = createAlbum(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Create Data Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: (_futureAlbum == null) ? buildColumn() : buildFutureBuilder(),
          ),
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Enter Title'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureAlbum = createAlbum(_controller.text);
            });
          },
          child: const Text('Create Data'),
        ),
      ],
    );
  }

  FutureBuilder<AlbumPost> buildFutureBuilder() {
    return FutureBuilder<AlbumPost>(
      future: _futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.title);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    );
  }
}