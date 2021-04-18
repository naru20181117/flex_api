import 'package:flutter/material.dart';

class CommonBase extends StatelessWidget {
  final tabs = [
    "Vacation",
    "Mountain",
    "Cafe",
    "Sunset",
    "Animal",
    "Fish",
    "Zibra"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController();
  }
}
