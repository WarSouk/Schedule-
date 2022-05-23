import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schedule/pages/main_screen.dart';
import 'package:schedule/pages/calc.dart';
import 'package:schedule/pages/result.dart';
import 'package:schedule/pages/result_four.dart';
import 'package:schedule/pages/result_three.dart';
import 'package:schedule/pages/result_two_h.dart';
import 'package:schedule/pages/result_three_h.dart';
import 'package:schedule/pages/result_four_h.dart';
import 'package:schedule/pages/test.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Poppins'),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/result': (context) => Result(),
      '/result2': (context) =>  ResultTwoH(),
      '/result3': (context) =>  ResultThreeH(),
      '/result4': (context) =>  ResultFourH(),
      '/result5': (context) =>  ResultThree(),
      '/result6': (context) =>  ResultFour(),




      },
    )
  );
}


