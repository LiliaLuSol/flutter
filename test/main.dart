import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Шкаф цветной'),
        ),
        body: Shkaf(),
      ),
    );
  }
}
class Shkaf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 185.0,
                height: 150.0,
                color: Colors.pink,
              ),
              Container(
                width: 185.0,
                height: 150.0,
                color: Colors.purple,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 185.0,
                height: 75.0,
                color: Colors.red,
              ),
              Container(
                width: 185.0,
                height: 75.0,
                color: Colors.blue,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 185.0,
                height: 75.0,
                color: Colors.orange,
              ),
              Container(
                width: 185.0,
                height: 75.0,
                color: Colors.green,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 185.0,
                height: 150.0,
                color: Colors.yellow,
              ),
              Container(
                width: 185.0,
                height: 150.0,
                color: Colors.brown,
              ),
            ],
          ),
        ],
      ),
    );
  }
}