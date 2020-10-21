import 'package:flutter/material.dart';
import 'package:ui_day3/pages/Splashscreen.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Roboto',
        ),
        home: Splashscreen(),
      ),
    );
