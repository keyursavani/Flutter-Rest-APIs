import 'package:flutter/material.dart';

class MyNextButton extends StatelessWidget{
  String name;
  VoidCallback onPressed;
   MyNextButton({Key? key , required this.onPressed , required this.name}):super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap:onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.blueGrey,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 15,bottom: 15,left: 15,right: 15),
            child: Text(name , style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
          ),
        ),
      ),
    );
  }
}