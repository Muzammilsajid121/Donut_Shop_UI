import 'package:donut_app_ui/util/my_tabs.dart';
import 'package:flutter/material.dart';

import 'tabs/burger_tab.dart';
import 'tabs/donut_tab.dart';
import 'tabs/pancake_tab.dart';
import 'tabs/pizza_tab.dart';
import 'tabs/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //my tabs
  List<Widget> myTabs = const [
    //donut tab
    MyTab(
      iconPath: "assets/donut.png",
    ),

    //burger tab
    MyTab(
      iconPath: "assets/burger.png",
    ),

    //smotthie tab
    MyTab(
      iconPath: "assets/smoothie.png",
    ),
    //pancake tab
    MyTab(
      iconPath: "assets/pancakes.png",
    ),
    //pizza tab
    MyTab(
      iconPath: "assets/pizza.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //wrapping scaffold with tab controlller

      length: myTabs.length, //making it dynamic
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
              ),
              onPressed: () {
                //open drawer
              },
            ),
          ),
          //

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                ),
                onPressed: () {
                  //do that
                },
              ),
            )
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
            child: Row(
              children: [
                Text(
                  "I want to eat",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                Text(
                  "Eat",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          //
          //tab bar
          TabBar(tabs: myTabs),

          // tab bar view
          Expanded(
              child: TabBarView(
            children: [
              //donut page
              DonutTab(),

              //burger page
              BurgerTab(),

              //smothie page
              SmoothieTab(),

              //pancake page
              PancakeTab(),

              //pizza page
              PizzaTab(),
            ],
          ))
        ]),
      ),
    );
  }
}
