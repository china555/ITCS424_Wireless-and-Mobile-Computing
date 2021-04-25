import 'package:flutter/material.dart';
import 'Home.dart';
// import 'package:dcdg/dcdg.dart';

void main() => runApp(MaterialApp(
      title: 'A WHOLE NEW WORD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));
