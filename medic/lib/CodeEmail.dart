import 'package:flutter/material.dart';

class fifth_page_code extends StatelessWidget {
  const fifth_page_code({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Введите код из E-mail',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CodeInputBox(),
                CodeInputBox(),
                CodeInputBox(),
                CodeInputBox(),
              ],
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height / 3,
              padding: EdgeInsets.all(8),
              color: Color.fromRGBO(209, 213, 219, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      NumberButton(1),
                      NumberButton(2),
                      NumberButton(3),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      NumberButton(4),
                      NumberButton(5),
                      NumberButton(6),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      NumberButton(7),
                      NumberButton(8),
                      NumberButton(9),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      NumberButton(0),
                      NumberButton(Icon(Icons.backspace)),
                    ],
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

class CodeInputBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(5),
      ),
      alignment: Alignment.center,
      child: Text(
        '', // Здесь может быть цифра, которую вводит пользователь
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
class NumberButton extends StatelessWidget {
  final dynamic content;

  NumberButton(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 - 32,
      height: 30,
      child: ElevatedButton(
        onPressed: () {
          // Действие при нажатии кнопки
        },
        child: content is int
            ? Text(
          content.toString(),
          style: TextStyle(fontSize: 24),
        )
            : content is Widget
            ? content
            : SizedBox.shrink(),
      ),
    );
  }
}