import 'package:flutter/material.dart';
import 'package:flutter_rest_api/API_With_StateManagement/model/put_method_model.dart';
import 'package:flutter_rest_api/API_With_StateManagement/provider/put_method_provider.dart';
import 'package:provider/provider.dart';

class PutMethodScrrenProvider extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PutMethodScreenProviderState();
  }
}

class PutMethodScreenProviderState extends State<PutMethodScrrenProvider>{
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<PutMethodProvider>(context, listen: false).getData(context);
  }
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PutMethodProvider>(context);
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text("Put Method"),
     ),
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20),
       child: provider.loading
           ? Center(
         child: Container(
           child: const CircularProgressIndicator(),
         ),
       ) :
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Center(
                 child: Text(provider.data.title ?? "",
                   textAlign: TextAlign.justify,
                   style: const TextStyle(
                       fontWeight: FontWeight.bold, fontSize: 18),
                 ),
               ),
               TextField(
                 controller: _controller,
                 decoration: const InputDecoration(
                   hintText: 'Enter Title',
                 ),
               ),
               SizedBox(height: 20,),
               ElevatedButton(
                 onPressed: () {
                   setState(() {
                   provider.updateData(_controller.text);
                   });
                 },
                 child: const Text('Update Data'),
               ),
             ],
           ),
     ),

   );
  }
}