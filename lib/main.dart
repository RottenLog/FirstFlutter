// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:test_app/router/router.dart';
import 'package:test_app/theme/theme.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoValue',
      theme: darkTheme, 
      routes: routes,
    );
  }
}