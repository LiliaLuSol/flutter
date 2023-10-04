import 'package:flutter/material.dart';
import 'package:route/CodeEmail.dart';

// class fourth_page_au extends StatelessWidget {
//   const fourth_page_au({super.key});
class fourth_page_au extends StatefulWidget {
  const fourth_page_au({Key? key}) : super(key: key);

  @override
  FourthPageAuState createState() => FourthPageAuState();
}

class FourthPageAuState extends State<fourth_page_au> {
  TextEditingController emailController = TextEditingController();
  bool isButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 64,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Image.asset("assets/images/hello.png",
                              fit: BoxFit.contain),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const Text(
                          'Добро пожаловать!',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    const Text(
                      'Войдите, чтобы пользоваться функциями приложения',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Вход по почте',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(126, 126, 154, 1)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 64,
                      height: 56,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(245, 245, 249, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: const Color.fromRGBO(235, 235, 235, 1),
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        style: TextStyle(fontSize: 15),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'example@mail.ru',
                          contentPadding: EdgeInsets.only(left: 14, right: 14),
                          alignLabelWithHint: true,
                        ),
                        onChanged: (value) {
                          setState(() {
                            if (value.contains(RegExp(r'@.*\.(com|ru)'))) {
                              isButtonEnabled = true;
                            } else {
                              isButtonEnabled = false;
                            }
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 64,
                      height: 56,
                      child: ElevatedButton(
                        // onPressed: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const fifth_page_code()),
                        //   );
                        // },
                        onPressed: isButtonEnabled
                            ? () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const fifth_page_code(),
                                  ),
                                );
                              }
                            : null,
                        child: const Text(
                          'Далее',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Или войдите с помощью',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(126, 126, 154, 1)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 64,
                      height: 60,
                      color: Colors.white,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Войти с Яндекс',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 64,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
