import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../provider/delete_method_provider.dart';
import '../services/delete_method_services.dart';

class DeleteMethodScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return DeleteMethodScreenState();
  }
}
class DeleteMethodScreenState extends State<DeleteMethodScreen>{
  late Future<AlbumDelete> _futureAlbum;

  @override
  void initState() {
    super.initState();
    _futureAlbum = fetchAlbum3();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Delete Method"),
      ),
      body: Center(
        child: FutureBuilder<AlbumDelete>(
          future: _futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(snapshot.data?.title ?? 'Deleted'),
                    ElevatedButton(
                      child: const Text('Delete Data'),
                      onPressed: () {
                        setState(() {
                          _futureAlbum =
                              deleteAlbum(snapshot.data!.id.toString());
                        });
                      },
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}