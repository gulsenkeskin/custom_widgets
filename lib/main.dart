import 'package:custom_widgets/routes/routes.dart';
import 'package:custom_widgets/src/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home:const HomePage(),
      routes: routes,
    );
  }
}