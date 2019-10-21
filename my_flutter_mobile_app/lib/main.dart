import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import './product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
            accentColor: Colors.deepPurple
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('My Ebay List'),
          ),
          body: ProductManager(),
      ),
    );
  }
}
