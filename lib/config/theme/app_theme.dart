import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepOrange,
  Colors.deepPurple
];

class AppTheme {
  final int sectedColor;
  final bool isDarkmode;

  AppTheme({
        this.sectedColor = 0, 
        this.isDarkmode=false
      })
      : assert(sectedColor >= 0, 'Selected color must be greater than 0'),
        assert(sectedColor < colorList.length,
            'selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkmode ? Brightness.dark: Brightness.light,
      colorSchemeSeed: colorList[sectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false)
  );
}
