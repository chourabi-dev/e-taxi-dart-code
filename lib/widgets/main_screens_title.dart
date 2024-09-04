import 'package:flutter/material.dart';

class MainScreenTitle extends StatelessWidget {
  final String title;
  const MainScreenTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),);
  }
}