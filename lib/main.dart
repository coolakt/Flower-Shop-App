import 'package:flower_shop_app/view/home/colors.dart';
import 'package:flower_shop_app/view/home/home_screen.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kbgClr,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
