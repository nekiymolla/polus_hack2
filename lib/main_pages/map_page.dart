import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFAB439),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.8),
                          spreadRadius: 10,
                          blurRadius: 10),
                    ],
                  ),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      'Маршрут не выбран',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Stem-Bold',
                        fontSize: 22,
                      ),
                    ),
                  ),
                )),
            const Expanded(
              child: YandexMap(),
            ),
          ]),
    );
  }
}
