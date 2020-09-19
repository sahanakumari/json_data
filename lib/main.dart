import 'package:flutter/material.dart';
import 'package:json_data/HomePage.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(title: 'Users'),
  ));
}
