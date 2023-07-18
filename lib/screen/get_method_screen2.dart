import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../provider/get_method_provider2.dart';
import '../services/get_method_services2.dart';

class GetMethod2Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return GetMethod2ScreenState();
  }
}
 class GetMethod2ScreenState extends State<GetMethod2Screen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Method List"),
      ),
      body: FutureBuilder<List<Photo>>(
        future: fetchPhotos(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return PhotosList(photos: snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class PhotosList extends StatelessWidget{
  final List<Photo> photos;
  String? name;
  PhotosList({Key? key, required this.photos , this.name}):super( key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return GridView.builder(
     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
     ),
     itemCount: photos.length,
     itemBuilder: (context, index) {
       return Image.network(photos[index].thumbnailUrl);
     },
   );
  }
}