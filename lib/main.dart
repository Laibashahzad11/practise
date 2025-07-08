import 'package:flutter/material.dart';
import 'package:hello_world/screens/list_view.dart';
import 'package:hello_world/screens/sign_up.dart';
import 'package:hello_world/screens/ui_calculator.dart';
import 'package:hello_world/screens/user_login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pro Calculator',
      theme: ThemeData(


      ),


debugShowCheckedModeBanner: false,
      home:  UserLoginScreen(),

    );
  }
}
