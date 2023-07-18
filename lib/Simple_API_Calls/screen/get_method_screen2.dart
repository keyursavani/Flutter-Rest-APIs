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
  Future<List<Photo>>? photos;
  @override
  void initState() {
    super.initState();
    photos = fetchPhotos(http.Client());
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Method List"),
      ),
      body: FutureBuilder<List<Photo>>(
        future: photos,
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

// class PhotosList extends StatelessWidget{
//   final List<Photo> photos;
//   String? name;
//   PhotosList({Key? key, required this.photos , this.name}):super( key: key);
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//    return GridView.builder(
//      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//        crossAxisCount: 2,
//      ),
//      itemCount: photos.length,
//      itemBuilder: (context, index) {
//        return Image.network(photos[index].thumbnailUrl);
//      },
//    );
//   }
// }

class PhotosList extends StatefulWidget{
  List<Photo> photos;
  PhotosList({Key? key , required this.photos}):super(key: key);
  @override
  State<StatefulWidget> createState() {
    return PhotosListState();
  }
}

class PhotosListState extends State<PhotosList>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  GridView.builder(
     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
     ),
     itemCount: widget.photos.length,
     itemBuilder: (context, index) {
       return Image.network(widget.photos[index].thumbnailUrl);
     },
   );
  }
}