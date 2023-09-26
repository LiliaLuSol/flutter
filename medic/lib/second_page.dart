import 'package:flutter/material.dart';
import 'package:route/first_page.dart';
import 'package:route/third_page.dart';

class second_page extends StatelessWidget {
  const second_page({super.key});

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
                    child: const Text(
                      "Пропустить",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  ),
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
                      "Уведомления",
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1.7 / 3,
                      child: const Text(
                        "Вы быстро узнаете о результатах",
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
                                    builder: (context) => const first_page()));
                          },
                        ),
                        ElevatedButton(
                          child: const Text('Далее'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const third_page()),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Image.asset(
                    "assets/images/Снимок экрана 2022-09-17 в 19.21 1.png",
                    fit: BoxFit.contain),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
