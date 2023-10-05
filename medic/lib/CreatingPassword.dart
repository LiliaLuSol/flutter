import 'package:flutter/material.dart';
import 'package:route/CreatingCard.dart';
import 'package:route/Homepage.dart';

class sixth_page_password extends StatefulWidget {
  @override
  SixthPagePasswordState createState() => SixthPagePasswordState();
}

class SixthPagePasswordState extends State<sixth_page_password> {
  List<String> codeList = List.filled(4, '');
  TextEditingController _codeController = TextEditingController();

  void updateCircles() {
    for (int i = 0; i < codeList.length; i++) {
      codeList[i] =
          i < _codeController.text.length ? _codeController.text[i] : '';
    }
    setState(() {});
    if (_codeController.text.length == 4) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  seventh_page_card(),
          ));
    }
  }

  @override
  void initState() {
    super.initState();
    _codeController.addListener(() {
      updateCircles();
    });
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = 24;
    double screenHeight = 24;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const eighth_page_home()),
                          );
                        },
                        child: const Text(
                          "Пропустить",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Создайте пароль',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Для защиты ваших персональных данных',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(147, 147, 150, 1)),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: codeList.map((code) {
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: code.isNotEmpty ? Colors.blue : Colors.grey,
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleButton("1", controller: _codeController),
                      SizedBox(
                        width: screenWidth,
                      ),
                      CircleButton("2", controller: _codeController),
                      SizedBox(
                        width: screenWidth,
                      ),
                      CircleButton("3", controller: _codeController)
                    ],
                  ),
                  SizedBox(
                    height: screenHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleButton("4", controller: _codeController),
                      SizedBox(
                        width: screenWidth,
                      ),
                      CircleButton("5", controller: _codeController),
                      SizedBox(
                        width: screenWidth,
                      ),
                      CircleButton("6", controller: _codeController)
                    ],
                  ),
                  SizedBox(
                    height: screenHeight ,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleButton("7", controller: _codeController),
                      SizedBox(
                        width: screenWidth ,
                      ),
                      CircleButton("8", controller: _codeController),
                      SizedBox(
                        width: screenWidth,
                      ),
                      CircleButton("9", controller: _codeController)
                    ],
                  ),
                  SizedBox(
                    height: screenHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // CircleAvatar(
                      //   radius: (MediaQuery.of(context).size.width-80) * 0.12,
                      //   backgroundColor: Colors.white,
                      //   ),
                      SizedBox(
                        width: screenWidth,
                      ),
                      CircleButton("-", controller: _codeController),
                      SizedBox(
                        width: screenWidth,
                      ),
                      CircleButton("0", controller: _codeController),
                      SizedBox(
                        width: screenWidth + 10,
                      ),
                      DeleteButton(controller: _codeController)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleButton extends StatefulWidget {
  final String number;
  final TextEditingController controller;

  CircleButton(this.number, {required this.controller});

  @override
  _CircleButtonState createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width - 70;
    double screenHeight = MediaQuery.of(context).size.height - 70;
    double size = 0;

    if (screenWidth > screenHeight) {
      size = screenHeight;
    } else {
      size = screenWidth;
    }

    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
        widget.controller.text += widget.number;
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
      },
      child: CircleAvatar(
        radius: size * 0.12,
        backgroundColor:
            isPressed ? Colors.blue : const Color.fromARGB(156, 233, 229, 229),
        child: Text(
          widget.number,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

class DeleteButton extends StatelessWidget {
  final TextEditingController controller;

  DeleteButton({required this.controller});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width-70;
    double screenHeight = MediaQuery.of(context).size.height-70;

    return GestureDetector(
      onTap: () {
        final text = controller.text;
        if (text.isNotEmpty) {
          controller.text = text.substring(0, text.length - 1);
        }
      },
      child: Container(
        width: screenWidth * 0.08,
        height: screenHeight * 0.04,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Image.asset(
          'assets/images/DEL ICON.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
