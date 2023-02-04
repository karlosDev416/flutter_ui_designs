import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/screens/basic_design.dart';
import 'package:flutter_ui_designs/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_design',
      routes: {
        'basic_design': (context) => BasicDesignScreen(),
        'scroll_design': (context) => ScrollScreen()
      },
    );
  }
}
