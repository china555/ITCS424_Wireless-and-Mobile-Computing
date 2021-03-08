import 'package:flutter/material.dart';
import 'Home.dart';

void main() => runApp(
  
  MaterialApp(
      title: 'A WHOLE NEW WORD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));
