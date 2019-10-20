import 'package:flutter/material.dart';

void main()  => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Ebay List'),
        ),
        body: Card(child: Column(children: <Widget>[
        Image.asset('assets/Xinbi.jpg'),
          Text('Xinbi At Work')
        ],),),
      ),
    );
  }
}
