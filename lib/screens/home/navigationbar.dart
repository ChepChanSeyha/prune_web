import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prune_web/services/auth_service.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 90,
              width: 150,
              child: Image.asset('assets/logo.png'),
            ),
          ),
          Container(
          ),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavbarItem('Episode'),
              SizedBox(
                width: 20,
              ),
              _NavbarItem('About'),
              SizedBox(width: 20,),
              //signout
              RaisedButton(
              onPressed: (){
                AuthService().signOut();
                
              },
              child: Center(
                child: Text('Sign out')
                ),
                color: Colors.red,
              
              ),
              SizedBox(width: 20,)

            ],
          )
        ],
      ),
      
    );
  }
}
class _NavbarItem extends StatelessWidget {
  final String title;
  const _NavbarItem(
    this.title,{
      Key key,
    }
  ) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
      
    );
  }
}