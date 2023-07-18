import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../provider/get_method_provider.dart';
import '../services/get_method_services.dart';

class GetMethodScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GetMethodScreenState();
  }
}

class GetMethodScreenState extends State<GetMethodScreen>{
  late Future<AlbumGet> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Method"),
      ),
      body: Center(
        child:
        FutureBuilder<AlbumGet>(
        future: futureAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data!.title.toString());
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
      ),
    );
  }
}