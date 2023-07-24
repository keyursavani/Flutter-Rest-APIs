import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rest_api/API_With_StateManagement/provider/delete_method_provider.dart';
import 'package:provider/provider.dart';

class DeleteMethodScreenProvider extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DeleteMethodScreenProviderState();
  }
}
class DeleteMethodScreenProviderState  extends State<DeleteMethodScreenProvider>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<DeleteMethodProvider>(context ,listen: false).getData(context);
  }
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DeleteMethodProvider>(context);
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        title: Text("Delete Method"),
      ),
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20),
        child: provider.loading
            ? Center(
          child: Container(
            child: const CircularProgressIndicator(),
          ),
        ) : Column(
           mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(provider.data!.title ?? "",
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            ElevatedButton(
              child: const Text('Delete Data'),
              onPressed: () {
                setState(() {
                  provider.deleteData(provider.data!.id.toString());
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}