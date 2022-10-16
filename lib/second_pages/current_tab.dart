import 'package:flutter/material.dart';
import 'package:polus_hack2/second_pages/order_page.dart';

class CurrentTab extends StatefulWidget {
  const CurrentTab({super.key});

  @override
  State<CurrentTab> createState() => _CurrentTabState();
}

class _CurrentTabState extends State<CurrentTab> {
  Widget containerOrder() {
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 10, left: 20),
      child: InkWell(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const OrderPage(),
            ),
          );
        },
        child: Container(
          height: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFF3F3F3),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.16),
                    spreadRadius: 1,
                    blurRadius: 16,
                    offset: const Offset(0, 20)),
              ]),
          child: Column(
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 5, top: 30, bottom: 10),
                    child: Text("Заявка №5632",
                        style: TextStyle(
                            fontSize: 22,
                            color: Color(0xFF373A36),
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFEFEFEF),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 30),
                        child: Icon(Icons.location_on_outlined, size: 20),
                      ),
                      Column(
                        children: const <Widget>[
                          Flexible(
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 20, right: 20, top: 5),
                              child: Text(
                                "ул. Агломератная, карьер №132",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF373A36),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 0, right: 105, top: 5),
                              child: Text(
                                "Погрузка руды",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF373A36),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            containerOrder(),
          ],
        ),
      ),
    );
  }
}
