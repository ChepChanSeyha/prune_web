import 'package:flutter/material.dart';
import 'package:prune_web/screens/home/navigationbar.dart';
import 'package:prune_web/services/auth_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
                'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
                fit:BoxFit.cover,
                ),
            NavigationBar(),
            Spacer(),
            Text('You are Logged in'),
            SizedBox(height: 10.0,),
            RaisedButton(
              onPressed: (){
                AuthService().signOut();
                
              },
              child: Center(
                child: Text('Sign out')
                ),
                color: Colors.red,
              
              )
          ],

        ),
      ),
          
    );
  }
}