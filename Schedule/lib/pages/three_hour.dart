import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schedule/pages/main_screen.dart';
import 'package:schedule/pages/result.dart';

String first_class_h = '';
String first_class_m = '';
String first_class_h_end = '';
String first_class_m_end = '';

String second_class_h = '';
String second_class_m = '';
String second_class_h_end = '';
String second_class_m_end = '';
int classes = 2;
int double_class = 1;

String first_short_break_s = '';
String first_short_break_e = '';
String second_short_break_s = '';
String second_short_break_e = '';
String first_lesson = '';
String second_lesson = '';
String third_lesson = '';
String forth_lesson = '';
String breaks = '';
String breaks2 = '';
String first_double = '';
String second_double = '';
String third_double = '';

void count_three_h() {
  int class_h = 1;


  int beg = int.parse(hcontroller.text);
  int holder_beg = 0;
  int beg_min = int.parse(mincontroller.text);
  int holder_min = 0;



  void mins() {
    do {
      holder_min = holder_min - 60;
      holder_beg++;
    } while (holder_min >= 60);
  }


  holder_beg = beg + class_h;
  holder_min = beg_min;
  if (beg_min < 10 && holder_min < 10){
    first_double = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
  }else if(holder_min < 10){
    first_double = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
  }else if(beg_min < 10){
    first_double = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
  }else{
    first_double = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
  }

  beg = holder_beg;
  beg_min = holder_min;
  holder_min = beg_min + 10;
  holder_beg = holder_beg;
  if (holder_min >= 60){
    mins();
  }
  if (beg_min < 10 && holder_min < 10){
    breaks = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
  }else if(holder_min < 10){
    breaks = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
  }else if(beg_min < 10){
    breaks = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
  }else{
    breaks = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
  }

  beg = holder_beg;
  beg_min = holder_min;
  holder_beg = holder_beg + class_h;

  if (beg_min < 10 && holder_min < 10){
    second_double = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
  }else if(holder_min < 10){
    second_double = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
  }else if(beg_min < 10){
    second_double = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
  }else{
    second_double = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
  }

  beg = holder_beg;
  beg_min = holder_min;
  holder_min = beg_min + 20;
  holder_beg = holder_beg;
  if (holder_min >= 60){
    mins();
  }
  if (beg_min < 10 && holder_min < 10){
    breaks2 = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
  }else if(holder_min < 10){
    breaks2 = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
  }else if(beg_min < 10){
    breaks2 = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
  }else{
    breaks2 = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
  }

  beg = holder_beg;
  beg_min = holder_min;
  holder_beg = holder_beg + class_h;

  if (beg_min < 10 && holder_min < 10){
    third_double = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
  }else if(holder_min < 10){
    third_double = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
  }else if(beg_min < 10){
    third_double = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
  }else{
    third_double = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
  }

}