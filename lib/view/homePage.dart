// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            'Bookshelf',
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
      )),
    );
  }
}
