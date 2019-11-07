import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]){
    print('[Products Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return Column(
        children: products
            .map((element) => Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/Xinbi.jpg'),
              Text(element)
            ], // <Widget>[]
          ), // Column
        ))
            .toList()
    );
  }

  // TODO: create check for URL in product file.
  _launchURL(String url) async {
    //if (await canLaunch(url)) {
      //await launch(url);
    //} else {
      //throw 'Could not launch $url';
    //}
  }
}