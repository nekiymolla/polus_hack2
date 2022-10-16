import 'package:flutter/material.dart';
import 'package:polus_hack2/second_pages/current_tab.dart';
import 'package:polus_hack2/second_pages/next_tab.dart';
import 'package:polus_hack2/second_pages/order_page.dart';
import 'package:polus_hack2/second_pages/past_tab.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pages/auth_landing.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: NestedScrollView(
              scrollDirection: Axis.vertical,
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                const SliverAppBar(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  toolbarHeight: 5,
                  snap: true,
                  floating: true,
                  backgroundColor: Colors.white,
                  bottom: TabBar(
                      labelColor: Color(0xFF373A36),
                      unselectedLabelColor: Color(0xFFFAB439),
                      indicatorColor: Color(0xFF373A36),
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Tab(text: 'Текущие'),
                        Tab(text: 'Предстоящие'),
                        Tab(text: 'Выполненные'),
                      ]),
                ),
              ],
              body: const TabBarView(
                children: [
                  CurrentTab(),
                  NextTab(),
                  PastTab(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
