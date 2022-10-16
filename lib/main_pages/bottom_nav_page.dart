import 'package:flutter/material.dart';
import 'package:polus_hack2/main_pages/current_order_page.dart';
import 'package:polus_hack2/main_pages/map_page.dart';
import 'package:polus_hack2/main_pages/orders_page.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var currentPage = 1;

  final pages = [
    const OrdersPage(),
    const CurrentOrder(),
    const MapPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages.elementAt(currentPage),
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.8),
                spreadRadius: 0,
                blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: SizedBox(
            height: 70,
            child: BottomNavigationBar(
                backgroundColor: const Color(0xFF373A36),
                unselectedItemColor: const Color(0xFFFFFFFF),
                selectedItemColor: const Color(0xFFFAB439),
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.task_outlined), label: 'Заявки'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.add_road), label: 'Текущая задача'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.map_rounded), label: 'Карта'),
                ],
                currentIndex: currentPage,
                onTap: (int Index) {
                  setState(() {
                    currentPage = Index;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
