import 'package:flutter/material.dart';

import 'package:flutter_sample_app/screens/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutte Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListScreen(),
    );
  }
}
