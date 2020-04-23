import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:50.0, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(Icons.settings)
              ],
            ),
          ),
          SizedBox(height: 30),
          CircleAvatar(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.white,
            radius: 60,
          ),
          SizedBox(height: 10),
          Text('Antonio Perex', style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          )),
          Text('134,679 XP'),
          SizedBox(height: 40),
          Container(
              width: 300,
              height: 60,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0,
                        offset: Offset(4.0, 4.0),
                        spreadRadius: 1.0)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('BADGES', style: TextStyle(color: Colors.indigo[900]),),
                  
                  Text('FRIENDS',style: TextStyle(color: Colors.grey),),
                   
                  Text('SCORES',style: TextStyle(color: Colors.grey),),
                ],
              ),
            ),
        ],
      ),
    );
  }
}