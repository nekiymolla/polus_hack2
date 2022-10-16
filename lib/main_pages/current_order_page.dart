import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:polus_hack2/second_pages/current_work_order.dart';

class CurrentOrder extends StatefulWidget {
  const CurrentOrder({super.key});

  @override
  State<CurrentOrder> createState() => _CurrentOrderState();
}

class _CurrentOrderState extends State<CurrentOrder> {
  Widget _buttonStart() {
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.only(left: 90, top: 20, bottom: 20, right: 90),
      foregroundColor: Color(0xFFFAB439),
      backgroundColor: Color(0xFFFAB439),
    );
    return ElevatedButton(
      style: Elstyle,
      onPressed: () async {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const CurWorkOrder()));
      },
      child: const Text(
        'Приступил к работе',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }

  Widget _inputsOrder() {
    return Column(
      children: <Widget>[
        Padding(
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
        const Divider(
          color: Colors.black38,
          height: 1,
          indent: 20,
          endIndent: 20,
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.only(right: 245),
          child: Text(
            'Адрес',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF373A36),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: 350,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Адрес такой то такой то',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.only(right: 240),
          child: Text(
            'Время',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF373A36),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: 350,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      '16 октября с 16:30 по 18:45',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.only(right: 180),
          child: Text(
            'Тип работы',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF373A36),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: 350,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Погрузка руды',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.only(right: 130),
          child: Text(
            'Тип транспорта',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF373A36),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: 350,
            height: 80,
            decoration: BoxDecoration(
              color: Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      'Погрузчик вилочный/KOMATSU FD50AYT',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 50),
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
