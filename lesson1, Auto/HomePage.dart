import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width - 64,
              height: MediaQuery.of(context).size.height / 3,
              color: Colors.tealAccent,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomField(),
            const SizedBox(
              height: 10,
            ),
            CustomField(),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 10,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.teal,
              ),
              child: const Center(
                child: Text("Button",
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 10,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.teal,
      ),
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(8),
        child: const Text(
          "--- --- ---",
          style: TextStyle(fontSize: 35),
        ),
    );
  }
}