import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.only(top:50.0,right: 28, left: 28),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Container(
        padding: EdgeInsets.all(20),
        decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
              offset: Offset(4.0, 4.0),
              spreadRadius: 1.0
            )
          ]
        ) ,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: <Widget>[
  Text('All'),
  Text('Studying'),
  Text('Saved'),
],
        ),
    )
          ],
        ),
      ),
    );
  }
}