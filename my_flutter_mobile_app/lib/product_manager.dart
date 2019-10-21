import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import './products.dart';

class ProductManager extends StatefulWidget {

  @override
  State<StatefulWidget> createState () {
    print('[ProductManager Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager>{

  List<String> _products = [];
  List data;
  String result = "";

  // Missing Authorization to test API call
  Future<String> getData(String result) async {
    var response = await http.get(
        Uri.encodeFull("https://api.sandbox.ebay.com/buy/browse/v1/item_summary/search?q=" + result),

        headers: {
          "Accept": "application/json",
          "Authorization": ""
        });

    this.setState(() {
      data = json.decode(response.body);
    });

    // prints the first result's title for debug
    print(data[0]["title"]);

    return "Success!";
  }

  @override
  void initState() {
    // Load Search bar first, then send result to get data
    getData(result);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {
          setState(() {
            _products.add('Hard Coding');
            print(_products);
          });

        },
        child: Text('Search'),
      ),
    ),
      Products(_products)
    ],);
  }
}