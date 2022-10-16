import 'dart:ui';

import 'package:flutter/material.dart';

class CurWorkOrder extends StatefulWidget {
  const CurWorkOrder({super.key});

  @override
  State<CurWorkOrder> createState() => _CurWorkOrderState();
}

class _CurWorkOrderState extends State<CurWorkOrder> {
  final _emailController = TextEditingController();

  Widget _inputAuth(
      String hint, TextEditingController controller, bool obscure) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left: 0, right: 0),
      alignment: Alignment.center,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        cursorColor: Colors.black,
        controller: controller,
        obscureText: obscure,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontFamily: 'calibri',
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFF3F3F3), width: 0.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFF3F3F3), width: 0.0),
          ),
          filled: true,
          focusColor: Color(0xFFF3F3F3),
          fillColor: Color(0xFFF3F3F3),
          hintStyle: const TextStyle(
              fontSize: 14,
              color: Color(0xFFF3F3F3),
              fontFamily: 'Stem-Regular'),
          hintText: hint,
        ),
      ),
    );
  }

  Widget _buttonStart() {
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding:
          const EdgeInsets.only(left: 100, top: 20, bottom: 20, right: 100),
      foregroundColor: Color(0xFFFAB439),
      backgroundColor: Color(0xFFFAB439),
    );
    return ElevatedButton(
      style: Elstyle,
      onPressed: () async {
        Navigator.pushReplacementNamed(context, '/main');
      },
      child: const Text(
        'Завершил работу',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }

  Widget _inputsOrder() {
    return Column(
      children: <Widget>[
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Flexible(
              child: Row(
                children: const <Widget>[
                  Text(
                    'Заявка №',
                    style: TextStyle(
                      fontFamily: 'Stem-Bold',
                      fontSize: 24,
                      color: Color(0xFF373A36),
                    ),
                  ),
                  Text(
                    '5632',
                    style: TextStyle(
                      fontFamily: 'Stem-Bold',
                      fontSize: 24,
                      color: Color(0xFFFAB439),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const Divider(
          color: Colors.black38,
          height: 1,
          indent: 20,
          endIndent: 20,
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.only(left: 30, right: 0),
          child: Text(
            'Введите код для завершения работы:',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF373A36),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(child: _inputAuth('', _emailController, false)),
            ],
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.only(left: 0, right: 30),
          child: Text(
            'Код требуется узнать у заказчика',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF373A36),
            ),
          ),
        ),
        const SizedBox(height: 380),
        _buttonStart(),
      ],
    );
  }

  Widget roundedContainer() {
    return Container(
      color: const Color(0xFFFAB439),
      child: Column(children: <Widget>[
        Container(
          color: const Color(0xFFFAB439),
          height: 140,
          width: MediaQuery.of(context).size.width,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            child: const Padding(
              padding: EdgeInsets.only(
                right: 190,
                left: 10,
                top: 20,
              ),
              child: Image(
                width: 150,
                image: AssetImage('assets/images/logo/logo.png'),
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: Container(
            color: Colors.white,
            height: 665,
            width: MediaQuery.of(context).size.width,
            child: _inputsOrder(),
          ),
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: roundedContainer(),
      ),
    );
  }
}
