import 'package:etaxi/screens/add_car_images.dart';
import 'package:etaxi/screens/add_car_informations.dart';
import 'package:etaxi/screens/add_driver_licence.dart';
import 'package:etaxi/screens/add_identity.dart';
import 'package:etaxi/screens/add_informations.dart';
import 'package:etaxi/screens/add_pro_card_number.dart';
import 'package:etaxi/screens/create_account.dart';
import 'package:etaxi/screens/history.dart';
import 'package:etaxi/screens/home.dart';
import 'package:etaxi/screens/reset_password.dart';
import 'package:etaxi/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'WorkSans',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  HistoryScreen()
    );
  }
}
