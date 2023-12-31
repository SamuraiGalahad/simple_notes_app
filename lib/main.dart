import 'package:flutter/material.dart';
import 'package:notes_example/pages/home.dart';
import 'package:notes_example/pages/mainscreen.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/todo': (context) => Home(),
      },
    )
);
