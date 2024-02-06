import 'package:flutter/material.dart';
import 'package:test_app/router/router.dart';
import 'package:test_app/theme/theme.dart';

class CryptoCointListApp extends StatelessWidget {
  const CryptoCointListApp({super.key});
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