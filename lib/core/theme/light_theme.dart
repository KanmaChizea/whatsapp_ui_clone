import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_ui_clone/core/constants/colors.dart';

ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: lightTealGreen,
      foregroundColor: white,
      titleTextStyle:
          TextStyle(fontWeight: FontWeight.w200, fontSize: 21, color: white),
    ),
    tabBarTheme: TabBarTheme(
        labelColor: white,
        unselectedLabelColor: grey,
        overlayColor: MaterialStateProperty.all(white.withOpacity(0.2)),
        labelPadding: EdgeInsets.zero,
        labelStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        unselectedLabelStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
    textTheme: const TextTheme(
        bodyText1: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
        bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
        caption: TextStyle(fontSize: 12, fontWeight: FontWeight.w200)));
