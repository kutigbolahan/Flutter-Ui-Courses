import 'package:courses/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
              child: Column(
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
             // SizedBox(height: 5),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/man.png'),
        backgroundColor: Colors.yellow,
        
        radius: 50,
              ),
              SizedBox(height: 10),
              Text('Antonio Perex', style:TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18
              )),
              Text('134,679 XP'),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom:20.0,right: 30, left: 30),
                child: Container(
         // width: 300,
         // height: 60,
          padding: EdgeInsets.all(5),
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
          child:Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                       backgroundImage: AssetImage('assets/images/medal.png'),
                    ),
                    title: Text('Perfectionist'),
                    subtitle: Text('Finish all lectures of a chapter'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/solution.png'),
                    ),
                    title: Text('Achiever'),
                    subtitle: Text('Complete all excercise'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/formula.png'),
                    ),
                    title: Text('Scholar'),
                    subtitle: Text('Study two courses'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                       backgroundImage: AssetImage('assets/images/trophy.png'),
                    ),
                    title: Text('Champion'),
                    subtitle: Text('Finish #1 on the score board'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/bullseye.png'),
                    ),
                    title: Text('Focused'),
                    subtitle: Text('Study everyday for 30 days'),
                  ),
                ],
            )
        ),
              ),
            ],
          ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
            title: Text('Home',style: TextStyle(color: Colors.grey),),
             icon: IconButton(icon:Icon(Icons.home, color: Colors.grey,),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
            },
            ),
          
          ),
          BottomNavigationBarItem(
            title: Text('Courses',style: TextStyle(color: Colors.grey),),
            icon: Icon(Icons.book,color: Colors.grey),
          
          ),
          BottomNavigationBarItem(
            title: Text('Profile',style: TextStyle(color: Colors.blue[700])),
            icon: Icon(Icons.account_circle,color: Colors.blue[700]),
          
          ),
        ]
        ),
    );
  }
}