import 'package:courses/secondpage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, right: 28, left: 28),
        child: Column(
          children: <Widget>[
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
                  Text('ALL', style: TextStyle(color: Colors.indigo[900]),),
                  Divider(color: Colors.red,),
                  Text('STUDYING',style: TextStyle(color: Colors.indigo[900]),),
                   Divider(color: Colors.red,),
                  Text('SAVED',style: TextStyle(color: Colors.grey),),
                ],
              ),
            ),
            Image.asset('assets/images/1.png'),
            Text('No Courses!', style: TextStyle(
              color: Colors.indigo[900],
              fontSize: 20,
              ),),
              SizedBox(height: 5),
            Text('Choose a Course from courses tab or use the button below to start ',
             style: TextStyle(
              color: Colors.indigo[500],
              fontWeight: FontWeight.normal
              ),
            textAlign: TextAlign.center,
            ),
            SizedBox(height: 30,),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(6),
                color: Colors.blue[700]
              ),
              child: Icon(Icons.add, color: Colors.white,),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
            title: Text('Home',style: TextStyle(color: Colors.blue[700]),),
            icon: Icon(Icons.home,color: Colors.blue[700]),
          
          ),
          BottomNavigationBarItem(
            title: Text('Courses',style: TextStyle(color: Colors.blue[700]),),
            icon: Icon(Icons.book,color: Colors.blue[700]),
          
          ),
          BottomNavigationBarItem(
            title: Text('Profile',style: TextStyle(color: Colors.grey),),
            icon: IconButton(icon:Icon(Icons.account_circle),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
            },
            ),
          
          ),
        ]
        ),
    );
  }
}
