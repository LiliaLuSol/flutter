import 'package:flutter/material.dart';
import 'package:route/second_page.dart';

class third_page extends StatelessWidget {
  const third_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
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
                      child: const Text("Завершить",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal))),
                  Image.asset("assets/images/shape.png"),
                ],
              ),
              SizedBox(width: 8),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text(
                      "Мониторинг",
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1.7 / 3,
                      child: const Text(
                        "Наши врачи всегда наблюдают за вашими показателями здоровья",
                        style: TextStyle(color: Colors.black38, fontSize: 14),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                    SizedBox(width: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          child: const Text('Назад'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const second_page()),
                            );
                          },
                        ),
                        SizedBox(
                          width: 70,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child:
                    Image.asset("assets/images/130 1.png", fit: BoxFit.contain),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
