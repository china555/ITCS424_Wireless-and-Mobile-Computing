import 'package:flutter/material.dart';
import 'Home.dart';
import 'guess.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/play': (context) => GameGuessWord(),
      },
      title: 'A WHOLE NEW WORD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));
