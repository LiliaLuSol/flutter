import 'package:flutter/material.dart';
import 'package:route/Homepage.dart';

class seventh_page_card extends StatefulWidget {
  @override
  SeventhPageCard createState() => SeventhPageCard();
}

class SeventhPageCard extends State<seventh_page_card> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _famController = TextEditingController();
  TextEditingController _otchlController = TextEditingController();
  TextEditingController _birthdaylController = TextEditingController();
  TextEditingController _polController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void dispose() {
    _nameController.dispose();
    _famController.dispose();
    _otchlController.dispose();
    _birthdaylController.dispose();
    _polController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    void _checkFields() {
      setState(() {
        _isButtonEnabled = _nameController.text.isNotEmpty &&
            _famController.text.isNotEmpty &&
            _birthdaylController.text.isNotEmpty &&
            _polController.text.isNotEmpty;
      });
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        //SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: const Text(
                      'Создание карты пациента',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
              const SizedBox(height: 16),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 40,
                      child: const Text(
                        'Без карты пациента вы не сможете заказать анализы.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(147, 147, 150, 1),
                        ),
                      ),
                    ),
                  ]),
              const SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 40,
                      child: const Text(
                        'В картах пациентов будут храниться результаты анализов вас и ваших близких.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(147, 147, 150, 1),
                        ),
                      ),
                    ),
                  ]),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Field(
                    width: 0.9,
                    labtext: "Имя",
                    height: 0.09,
                    colortxt: Colors.black45,
                    mode: false,
                    onChange: (value) {
                      setState(() {
                        _nameController.text = value;
                        _checkFields();
                      });
                    },
                    controller: _nameController,
                  )
                ],
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Field(
                    width: 0.9,
                    labtext: "Фамилия",
                    height: 0.09,
                    colortxt: Colors.black45,
                    mode: false,
                    onChange: (value) {
                      setState(() {
                        _famController.text = value;
                        _checkFields();
                      });
                    },
                    controller: _famController,
                  )
                ],
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Field(
                    width: 0.9,
                    labtext: "Отчество",
                    height: 0.09,
                    colortxt: Colors.black45,
                    mode: false,
                    onChange: (value) {
                      setState(() {
                        _otchlController.text = value;
                        _checkFields();
                      });
                    },
                    controller: _otchlController,
                  )
                ],
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Field(
                    width: 0.9,
                    labtext: "Дата рождения",
                    height: 0.09,
                    colortxt: Colors.black45,
                    mode: false,
                    onChange: (value) {
                      setState(() {
                        _birthdaylController.text = value;
                        _checkFields();
                      });
                    },
                    controller: _birthdaylController,
                  )
                ],
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Pol(
                    width: 0.9,
                    labtext: "Пол",
                    height: 0.09,
                    colortxt: Colors.black45,
                    mode: false,
                    onChange: (value) {
                      setState(() {
                        _polController.text = value;
                        _checkFields();
                      });
                    },
                    controller: _polController,
                  )
                ],
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonPush(
                    isEnabled: _isButtonEnabled,
                    size: 16,
                    txt: "Создать",
                    page: (context) => const eighth_page_home(),
                    colortxt: const Color.fromARGB(255, 255, 255, 255),
                    width: 0.8,
                    height: 0.09,
                    backgroundColor: _isButtonEnabled
                        ? const Color.fromARGB(
                            255, 26, 111, 238) // Цвет активной кнопки
                        : const Color.fromARGB(255, 13, 33, 105),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Field extends StatelessWidget {
  final double width;
  final double height;
  final Color colortxt;
  final String labtext;
  final bool mode;
  final ValueChanged<String>? onChange;
  final TextEditingController? controller;

  const Field(
      {required this.width,
      this.controller,
      this.onChange,
      required this.labtext,
      required this.height,
      required this.colortxt,
      required this.mode});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double rectangleWidth = screenWidth * width;
    double screenHeight = MediaQuery.of(context).size.height;
    double rectangleHeight = screenHeight * height - 4;

    return Container(
      width: rectangleWidth,
      height: rectangleHeight,
      decoration: BoxDecoration(
        color: const Color.fromARGB(156, 233, 229, 229),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: controller != null && controller!.text.isNotEmpty
              ? Colors.blue
              : const Color.fromARGB(156, 233, 229, 229),
          width: 2.0,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: rectangleWidth - 16,
          child: TextField(
            onChanged: onChange,
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: labtext,
              labelStyle: const TextStyle(color: Colors.grey),
              hintStyle: TextStyle(color: colortxt),
            ),
            style: const TextStyle(color: Colors.black),
            // Установите цвет текста на чёрный
            textAlign: TextAlign.left,
            obscureText: mode,
          ),
        ),
      ),
    );
  }
}

class Pol extends StatelessWidget {
  final double width;
  final double height;
  final Color colortxt;
  final String labtext;
  final bool mode;
  final ValueChanged<String>? onChange;
  final TextEditingController? controller;

  const Pol(
      {required this.width,
      this.controller,
      this.onChange,
      required this.labtext,
      required this.height,
      required this.colortxt,
      required this.mode});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double rectangleWidth = screenWidth * width;
    double screenHeight = MediaQuery.of(context).size.height;
    double rectangleHeight = screenHeight * height - 4;

    return Container(
      width: rectangleWidth,
      height: rectangleHeight,
      decoration: BoxDecoration(
        color: const Color.fromARGB(156, 233, 229, 229),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: controller != null && controller!.text.isNotEmpty
              ? Colors.blue
              : const Color.fromARGB(156, 233, 229, 229),
          width: 2.0,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: rectangleWidth - 16,
          child: DropdownButtonFormField<String>(
            value: null,
            onChanged: (String? newValue) {
              if (onChange != null) {
                onChange!(newValue!);
              }
            },
            items: ['Мужской', 'Женский'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: labtext,
              labelStyle: const TextStyle(color: Colors.grey),
              hintStyle: TextStyle(color: colortxt),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonPush extends StatelessWidget {
  final String txt;
  final Color backgroundColor;
  final double width;
  final double height;
  final Color colortxt;
  final double size;
  final Widget Function(BuildContext) page;
  final bool isEnabled;

  const ButtonPush(
      {required this.isEnabled,
      required this.txt,
      required this.size,
      required this.page,
      required this.width,
      required this.height,
      required this.backgroundColor,
      required this.colortxt});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double rectangleWidth = screenWidth * width;
    double screenHeight = MediaQuery.of(context).size.height;
    double rectangleHeight = screenHeight * height;

    return ElevatedButton(
      onPressed: isEnabled
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: page,
                ),
              );
            }
          : null,
      child: Text(
        txt,
        style: TextStyle(color: colortxt, fontSize: size),
      ),
      // Текст на кнопке
      style: ElevatedButton.styleFrom(
        minimumSize: Size(rectangleWidth, rectangleHeight),
        backgroundColor: backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
