import 'dart:ui';

import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Image.network(
                'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
                fit:BoxFit.cover,
                ),
          ),
          Container(
          ),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavbarItem('Episode'),
              _NavbarItem('About'),
              SizedBox(width: 50,)

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