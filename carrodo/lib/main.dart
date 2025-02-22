import 'package:carrodo/auth/_auth_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication Page',
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
