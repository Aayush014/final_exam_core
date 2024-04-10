import 'package:final_exam_core/Add%20Data/add_data.dart';
import 'package:final_exam_core/Home%20Screen/home_screen.dart';
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
      theme: ThemeData.dark(useMaterial3: true),
      routes: {
        '/': (context) => const HomeScreen(),
        'add': (context) => const AddData(),
      },
    );
  }
}