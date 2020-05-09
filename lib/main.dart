import 'package:flutter/material.dart';
import 'package:prune_web/screens/home/home.dart';
import 'package:prune_web/screens/home/navigationbar.dart';
import 'package:prune_web/services/auth_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prune Web',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: AuthService().handleAuth(),
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
    );
  }
}
