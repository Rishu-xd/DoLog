import 'package:anoink/pages/first_page.dart';
import 'package:anoink/pages/second_page.dart';
import 'package:anoink/pages/settings.dart';
import 'package:anoink/pages/todo.dart';
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
      home: pageone(),
      routes: {
        '/pagetwo':(context) => pagetwo(),
        '/pageone':(context) => pageone(),
         '/settings':(context) => Settings(),
         '/todo':(context) => Todo(),

      },
    );
  }
}
