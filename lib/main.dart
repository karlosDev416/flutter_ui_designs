import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_designs/screens/basic_design.dart';
import 'package:flutter_ui_designs/screens/home_screen.dart';
import 'package:flutter_ui_designs/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      theme: ThemeData.dark(),
      routes: {
        'home_screen': (context) => HomeScreen(),
        'basic_design': (context) => BasicDesignScreen(),
        'scroll_design': (context) => ScrollScreen()
      },
    );
  }
}
