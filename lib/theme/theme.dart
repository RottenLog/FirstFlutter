import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  listTileTheme: const ListTileThemeData(iconColor: Colors.amber),
  scaffoldBackgroundColor: Colors.amber.shade100,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.amber, titleTextStyle: TextStyle(fontWeight: FontWeight.w100, fontSize: 40),),
  dividerTheme: const DividerThemeData(color: Colors.black),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: 10,
      )
    ),
);