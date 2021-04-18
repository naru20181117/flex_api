import 'package:flutter/material.dart';
import 'CommonUtil.dart';

class CommonBase extends StatelessWidget {
  final tabs = [
    KEY_WORDS.Vacation.value,
    KEY_WORDS.Mountain.value,
    KEY_WORDS.Cafe.value,
    KEY_WORDS.Sunset.value,
    KEY_WORDS.Animal.value,
    KEY_WORDS.Fish.value,
    KEY_WORDS.Zebra.value
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Search Pixabay",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          backgroundColor: Colors.orangeAccent[700],
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white.withOpacity(0.7),
            unselectedLabelStyle: TextStyle(fontSize: 15.0),
            labelColor: Colors.red,
            labelStyle: TextStyle(fontSize: 22.0),
            indicatorWeight: 2.0,
            tabs: [
              for (final tab in tabs) Tab(text: tab),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Page1(),
            // Page2(),
            // Page3(),
            // Page4(),
            // Page5(),
            // Page6(),
            // Page7()
          ],
        ),
      ),
    );
  }
}
