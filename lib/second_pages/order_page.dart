import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  Widget _buttonConnect() {
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 10),
      foregroundColor: Color(0xFFFAB439),
      backgroundColor: Color(0xFFFAB439),
    );
    return ElevatedButton(
      style: Elstyle,
      onPressed: () async {
        Navigator.pushReplacementNamed(context, '/main');
      },
      child: const Text(
        'Связаться с заказчиком',
        style: TextStyle(fontSize: 12, color: Colors.white),
      ),
    );
  }

  Widget _buttonBack() {
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.only(left: 65, top: 10, bottom: 10, right: 65),
      foregroundColor: const Color(0xFF373A36),
      backgroundColor: const Color(0xFF373A36),
    );
    return ElevatedButton(
      style: Elstyle,
      onPressed: () async {
        Navigator.pushReplacementNamed(context, '/main');
      },
      child: const Text(
        'Назад',
        style: TextStyle(fontSize: 12, color: Colors.white),
      ),
    );
  }

  Widget columnInfo() {
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
        const SizedBox(height: 110),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buttonBack(),
            const SizedBox(
              width: 10,
            ),
            _buttonConnect()
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/pages/auth_landing.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  right: 190,
                  left: 10,
                  top: 40,
                ),
                child: Image(
                  width: 150,
                  image: AssetImage('assets/images/logo/logo.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 60,
                  bottom: 20,
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  child: columnInfo(),
                  height: 640,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFF3F3F3),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 5,
                            blurRadius: 16,
                            offset: const Offset(0, 20)),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
