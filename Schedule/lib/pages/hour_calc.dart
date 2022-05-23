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
String first_double = '';
String second_double = '';

void count_two_h() {
  int class_h = 1;
  int class_min = 0;
  int short_break = 5;
  int long_break = 10;

  int beg = int.parse(hcontroller.text);
  int holder_beg = 0;
  int beg_min = int.parse(mincontroller.text);
  int holder_min = 0;


  int second_class;
  int first_break;
  int third_class;
  int second_short_break;
  int forth_class;
  int fifth_class;
  int third_short_break;
  int sixth_class;
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

}

  //
  // for (int i = 0; i < 2; i++){
  //   holder_beg = beg;
  //   holder_min = beg_min + class_min;
  //   if (holder_min >= 60) {
  //     mins();
  //   }
  //   print('$double_class пара:');
  //   print(' 1 урок: $beg $beg_min - $holder_beg $holder_min');
  //   if (double_class == 1) {
  //     first_class_h = beg.toString();
  //     first_class_m = beg_min.toString();
  //     first_class_m_end = holder_min.toString();
  //     if(beg_min < 10){
  //       first_class_m = '0' + first_class_m;
  //     }
  //     if (holder_min < 10){
  //       first_class_m_end = '0' + first_class_m_end;
  //     }
  //     first_double = beg.toString() + ':' + first_class_m;
  //     first_lesson = beg.toString() + ':' + first_class_m + '-' + holder_beg.toString() + ':' + first_class_m_end;
  //
  //   }else if (double_class == 2){
  //     second_class_h = beg.toString();
  //     second_class_m = beg_min.toString();
  //     second_class_m_end = holder_min.toString();
  //     if(beg_min < 10){
  //       second_class_m = '0' + second_class_m;
  //     }
  //     if (holder_min < 10){
  //       second_class_m_end = '0' + second_class_m_end;
  //     }
  //     second_double = beg.toString() + ':' + second_class_m;
  //     third_lesson = second_class_h + ':' + second_class_m + '-' + holder_beg.toString() + ':' + second_class_m_end;
  //   }
  //
  //   beg = holder_beg;
  //   beg_min = holder_min;
  //   holder_min = holder_min + short_break;
  //   if (holder_min >= 60) {
  //     mins();
  //   }
  //   if (double_class == 1) {
  //     if(beg_min < 10){
  //       first_short_break_s = beg.toString() + ':' + '0' + beg_min.toString();
  //     }else{
  //       first_short_break_s = beg.toString() + ':' + beg_min.toString();
  //     }
  //
  //     if(holder_min < 10){
  //       first_short_break_e = holder_beg.toString() + ':' + '0' + holder_min.toString();
  //     }else{
  //       first_short_break_e = holder_beg.toString() + ':' + holder_min.toString();
  //     }
  //
  //   }else if (double_class == 2){
  //     if(beg_min < 10){
  //       second_short_break_s = beg.toString() + ':' + '0' + beg_min.toString();
  //     }else{
  //       second_short_break_s = beg.toString() + ':' + beg_min.toString();
  //     }
  //
  //     if(holder_min < 10){
  //       second_short_break_e = holder_beg.toString() + ':' + '0' + holder_min.toString();
  //     }else{
  //       second_short_break_e = holder_beg.toString() + ':' + holder_min.toString();
  //     }
  //
  //   }
  //   print(' Пятиминутка: $beg $beg_min - $holder_beg $holder_min');
  //   if (holder_min >= 60) {
  //     mins();
  //   }
  //
  //   beg = holder_beg;
  //   beg_min = holder_min;
  //   holder_min = holder_min + class_min;
  //   if (holder_min >= 60) {
  //     mins();
  //   }
  //   print(' 2 урок: $beg $beg_min - $holder_beg $holder_min');
  //   if (double_class == 1) {
  //     first_class_h_end = holder_beg.toString();
  //     first_class_m_end = holder_min.toString();
  //     first_class_m = beg_min.toString();
  //     if (beg_min < 10){
  //       first_class_m = '0' + first_class_m;
  //     }
  //     if(holder_min < 10){
  //       first_class_m_end = '0' + first_class_m_end;
  //     }
  //     first_double = first_double + '-' + holder_beg.toString() + ':' + first_class_m_end;
  //     second_lesson = beg.toString() + ':' + first_class_m + '-' + holder_beg.toString() + ':' + first_class_m_end;
  //   }else if (double_class == 2){
  //
  //     second_class_h_end = holder_beg.toString();
  //     second_class_m_end = holder_min.toString();
  //     second_class_m = beg_min.toString();
  //     if (beg_min < 10){
  //       second_class_m = '0' + second_class_m;
  //     }
  //
  //     if(holder_min < 10){
  //       second_class_m_end = '0' + second_class_m_end;
  //     }
  //     second_double = second_double + '-' + holder_beg.toString() + ':' + second_class_m_end;
  //     forth_lesson = beg.toString() + ':' + second_class_m + '-' + holder_beg.toString() + ':' + second_class_m_end;
  //   }
  //   beg = holder_beg;
  //   beg_min = holder_min;
  //   holder_min = holder_min + long_break;
  //   if (holder_min >= 60) {
  //     mins();
  //   }
  //   if (double_class < 2){
  //     print('Перемена: $beg $beg_min - $holder_beg $holder_min');
  //     if (beg_min < 10){
  //       breaks = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
  //     }else if (holder_min < 10){
  //       breaks = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
  //     }else if (beg_min < 10 && holder_min < 10){
  //       breaks = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
  //     }else{
  //       breaks = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
  //     }
  //
  //     beg = holder_beg;
  //     beg_min = holder_min;
  //   }
  //   double_class++;
  //
  //
  //
  //
  // }