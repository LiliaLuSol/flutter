import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Шкаф цветной'),
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
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                        ),
                        color: Colors.pink,
                      ),
                      child: const Center(
                        child: Text(
                          '1',
                          style: TextStyle(color: Colors.lightGreenAccent, fontSize: 35),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                        ),
                        color: Colors.purple,
                      ),
                      child: const Center(
                        child: Text(
                          '2',
                          style: TextStyle(color: Colors.limeAccent, fontSize: 35),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          '3',
                          style: TextStyle(color: Colors.black54, fontSize: 35),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          '4',
                          style: TextStyle(color: Colors.orangeAccent, fontSize: 35),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      color: Colors.orange,
                      child: const Center(
                        child: Text(
                          '5',
                          style: TextStyle(color: Colors.blueAccent, fontSize: 35),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      color: Colors.green,
                      child: const Center(
                        child: Text(
                          '6',
                          style: TextStyle(color: Colors.redAccent, fontSize: 35),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                        ),
                        color: Colors.yellow,
                      ),
                      child: const Center(
                        child: Text(
                          '7',
                          style: TextStyle(color: Colors.purpleAccent, fontSize: 35),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                        ),
                        color: Colors.brown,
                      ),
                      child: const Center(
                        child: Text(
                          '8',
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}