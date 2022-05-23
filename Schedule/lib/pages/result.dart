import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schedule/pages/main_screen.dart';
import 'package:schedule/pages/calc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';




class resultScreen extends StatelessWidget {
  const resultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ScheduleCounter'),
          backgroundColor: Colors.deepPurple,
          centerTitle: true ,
        ),

        body:SafeArea(
        minimum: const EdgeInsets.all(15.0),
          child: Column(
            children: [

              Text('1 пара: $first_class_h:$first_class_m - $first_class_h_end:$first_class_m_end',
                style: TextStyle(
                  fontFamily: 'Poppins-Bold',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),),
              Text('1 урок: $first_lesson',
                style: TextStyle(
                  fontFamily: 'Poppins-Bold',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),),
              Text('Пятиминутка: $first_short_break_s - $first_short_break_e',
                style: TextStyle(
                  fontFamily: 'Poppins-Bold',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),),
              Text('1 урок: $first_lesson',
                style: TextStyle(
                  fontFamily: 'Poppins-Bold',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),),
              SizedBox(height: 10,),
              Text('2 пара: $second_class_h:$second_class_m - $second_class_h_end:$second_class_m_end',
              style: TextStyle(
                fontFamily: 'Poppins-Bold',
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
              )
            ],
          ),
        )
    );
  }
}


 

