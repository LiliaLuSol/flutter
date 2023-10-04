import 'package:flutter/material.dart';
import 'package:route/AuthReg.dart';
import 'package:route/CreatingPassword.dart';

// class fifth_page_code extends StatelessWidget {
//   const fifth_page_code({super.key});

class fifth_page_code extends StatefulWidget {
  const fifth_page_code({Key? key}) : super(key: key);

  @override
  FifthPageCodeState createState() => FifthPageCodeState();
}

class FifthPageCodeState extends State<fifth_page_code> {
  int countdown = 60;

  void startCountdown() {
    Future.delayed(const Duration(seconds: 1), () {
      if (countdown > 0) {
        setState(() {
          countdown--;
        });
        startCountdown();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const fourth_page_au()),
                    );
                  },
                  child: Image.asset(
                    'assets/images/Back.png',
                    width: 32,
                    height: 32,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 132),
            const Text(
              'Введите код из E-mail',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            CodeInput(),
            const SizedBox(height: 16),
            Text(
              'Отправить код повторно можно будет через $countdown секунд',
              style: const TextStyle(
                  fontSize: 15, color: Color.fromRGBO(147, 147, 150, 1)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class CodeInput extends StatefulWidget {
  @override
  _CodeInputState createState() => _CodeInputState();
}

class _CodeInputState extends State<CodeInput> {
  List<TextEditingController> controllers = List.generate(
    4,
    (index) => TextEditingController(),
  );

  String combinedText = '';

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < controllers.length; i++) {
      controllers[i].addListener(() {
        setState(() {
          combinedText =
              controllers.map((controller) => controller.text).join();
        });
        if (combinedText.length == 4) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const sixth_page_password()));
        }
      });
    }
  }

  void moveToNextField(int currentIndex) {
    if (currentIndex < controllers.length - 1) {
      FocusScope.of(context).nextFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 4; i++)
          Container(
            width: 48,
            height: 48,
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color.fromRGBO(235, 235, 235, 1)),
              color: const Color.fromRGBO(245, 245, 249, 1),
            ),
            child: TextField(
                controller: controllers[i],
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                  counterText: "",
                  border: InputBorder.none,
                ),
                onChanged: (_) {
                  moveToNextField(i);
                }),
          ),
      ],
    );
  }
}
