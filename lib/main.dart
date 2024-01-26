import 'package:flutter/material.dart';

import 'views/fixtures_view.dart';
import 'widgets/fixtures_container.dart';

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
      title: 'Fluffy Challenge Week 3',
      theme: ThemeData(
        fontFamily: 'AldotheApache',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FixturesView()
    );
  }
}
