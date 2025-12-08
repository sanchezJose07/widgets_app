import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.pinkAccent,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;
  
  const AppTheme({
    this.selectedColor = 0  
  }):assert( selectedColor >= 0, "Color debe ser mayor que cero"),
     assert( selectedColor < colorList.length - 1, "Color debe ser menor que ${colorList.length-1}" );
  
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: false
    )
  );
}