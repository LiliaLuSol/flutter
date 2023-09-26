import 'package:flutter/material.dart';
import 'package:route/second_page.dart';

class first_page extends StatelessWidget {
  const first_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextButton(
                      onPressed: () {},
                      child: const Text("Пропустить",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal))),
                  Image.asset("assets/images/shape.png"),
                ],
              ),
              const SizedBox(width: 8),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Анализы",
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.7 / 3,
                    child: const Text(
                      "Экспресс сбор и получение проб",
                      style: TextStyle(color: Colors.black38, fontSize: 14),
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  ),

              const SizedBox(width: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 70,
                  ),
                  ElevatedButton(
                    child: const Text('Далее'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const second_page()),
                      );
                    },
                  ),
                ],
              ),
                ],),
              ),
              const SizedBox(width: 8),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Image.asset("assets/images/Illustration.png",
                    fit: BoxFit.contain),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
