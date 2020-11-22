import 'package:flutter/material.dart';

Color BACKGROUND_COLOR = Colors.grey[300];
Color BORDER_COLOR = Color(0xFF757575);
Color BOTTOMNAVBAR_ICON_COLOR = Color(0xFFCB9B51);

List<Color> GRADIENT_COLOR = 
[
  Color(0xFF462523),
  Color(0xFFCB9B51),
  Color(0xFFF6E27A),
  Color(0xFFF6E27A),
  Color(0xFFCB9B51),
  Color(0xFF462523),
];

Container appBarGradient = 
    Container
    (
      decoration: BoxDecoration
      (
        gradient: LinearGradient
        (
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: GRADIENT_COLOR,
        ),
      ),
    );