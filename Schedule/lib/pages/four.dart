import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schedule/pages/main_screen.dart';

import 'main_screen.dart';
String first_class_h = '';
String first_class_m = '';
String first_class_h_end = '';
String first_class_m_end = '';

String second_class_h = '';
String second_class_m = '';
String second_class_h_end = '';
String second_class_m_end = '';

String third_class_h = '';
String third_class_m = '';
String third_class_h_end = '';
String third_class_m_end = '';

String four_class_h = '';
String four_class_m = '';
String four_class_h_end = '';
String four_class_m_end = '';
int classes = 2;
int double_class = 1;

String first_short_break_s = '';
String first_short_break_e = '';
String second_short_break_s = '';
String second_short_break_e = '';
String third_short_break_s = '';
String third_short_break_e = '';
String four_short_break_s = '';
String four_short_break_e = '';
String first_lesson = '';
String second_lesson = '';
String third_lesson = '';
String forth_lesson = '';
String fifth_lesson = '';
String sixth_lesson = '';
String seventh_lesson = '';
String eighth_lesson = '';
String breaks = '';
String lunch = '';
String breaks2 = '';
String first_double = '';
String second_double = '';
String third_double = '';
String fourth_double = '';
void count_four(){

  int class_min = 40;
  int short_break = 5;
  int long_break = 10;


  int beg = int.parse(hcontroller.text);
  int holder_beg = 0;
  int beg_min = int.parse(mincontroller.text);
  int holder_min = 0;
  int double_class = 1;



  void mins(){
   do {
    holder_min = holder_min - 60;
    holder_beg++;
  }while(holder_min >= 60);
}
 

    for (int i = 0; i < 4; i++){
      holder_beg = beg;
      holder_min = beg_min + class_min;
      if (holder_min >= 60) {
         mins();
      }
      print('$double_class пара:');
      print(' 1 урок: $beg $beg_min - $holder_beg $holder_min');
      if (double_class == 1) {
        first_class_h = beg.toString();
        first_class_m = beg_min.toString();
        first_class_m_end = holder_min.toString();
        if(beg_min < 10){
          first_class_m = '0' + first_class_m;
        }
        if (holder_min < 10){
          first_class_m_end = '0' + first_class_m_end;
        }
        first_double = beg.toString() + ':' + first_class_m;
        first_lesson = beg.toString() + ':' + first_class_m + '-' + holder_beg.toString() + ':' + first_class_m_end;

      }else if (double_class == 2){
        second_class_h = beg.toString();
        second_class_m = beg_min.toString();
        second_class_m_end = holder_min.toString();
        if(beg_min < 10){
          second_class_m = '0' + second_class_m;
        }
        if (holder_min < 10){
          second_class_m_end = '0' + second_class_m_end;
        }
        second_double = beg.toString() + ':' + second_class_m;
        third_lesson = second_class_h + ':' + second_class_m + '-' + holder_beg.toString() + ':' + second_class_m_end;
      }else if (double_class == 3){
        third_class_h = beg.toString();
        third_class_m = beg_min.toString();
        third_class_m_end = holder_min.toString();
        if(beg_min < 10){
          third_class_m = '0' + third_class_m;
        }
        if (holder_min < 10){
          third_class_m_end = '0' + third_class_m_end;
        }
        third_double = beg.toString() + ':' + third_class_m;
        fifth_lesson = third_class_h + ':' + third_class_m + '-' + holder_beg.toString() + ':' + third_class_m_end;
      }else if (double_class == 4){
        four_class_h = beg.toString();
        four_class_m = beg_min.toString();
        four_class_m_end = holder_min.toString();
        if(beg_min < 10){
          four_class_m = '0' + four_class_m;
        }
        if (holder_min < 10){
          four_class_m_end = '0' + four_class_m_end;
        }
        fourth_double = beg.toString() + ':' + four_class_m;
        seventh_lesson = four_class_h + ':' + four_class_m + '-' + holder_beg.toString() + ':' + four_class_m_end;
      }
      beg = holder_beg;
      beg_min = holder_min;
      holder_min = holder_min + short_break;
      if (holder_min >= 60) {
         mins();
      }
      if (double_class == 1) {
        if(beg_min < 10){
          first_short_break_s = beg.toString() + ':' + '0' + beg_min.toString();
        }else{
          first_short_break_s = beg.toString() + ':' + beg_min.toString();
        }

        if(holder_min < 10){
          first_short_break_e = holder_beg.toString() + ':' + '0' + holder_min.toString();
        }else{
          first_short_break_e = holder_beg.toString() + ':' + holder_min.toString();
        }

      }else if (double_class == 2){
        if(beg_min < 10){
          second_short_break_s = beg.toString() + ':' + '0' + beg_min.toString();
        }else{
          second_short_break_s = beg.toString() + ':' + beg_min.toString();
        }

        if(holder_min < 10){
          second_short_break_e = holder_beg.toString() + ':' + '0' + holder_min.toString();
        }else{
          second_short_break_e = holder_beg.toString() + ':' + holder_min.toString();
        }

      }else if (double_class == 3){
        if(beg_min < 10){
          third_short_break_s = beg.toString() + ':' + '0' + beg_min.toString();
        }else{
          third_short_break_s = beg.toString() + ':' + beg_min.toString();
        }

        if(holder_min < 10){
          third_short_break_e = holder_beg.toString() + ':' + '0' + holder_min.toString();
        }else{
          third_short_break_e = holder_beg.toString() + ':' + holder_min.toString();
        }

      }else if (double_class == 4){
        if(beg_min < 10){
          four_short_break_s = beg.toString() + ':' + '0' + beg_min.toString();
        }else{
          four_short_break_s = beg.toString() + ':' + beg_min.toString();
        }

        if(holder_min < 10){
          four_short_break_e = holder_beg.toString() + ':' + '0' + holder_min.toString();
        }else{
          four_short_break_e = holder_beg.toString() + ':' + holder_min.toString();
        }
      }
      print(' Пятиминутка: $beg $beg_min - $holder_beg $holder_min');
      if (holder_min >= 60) {
         mins();
   }
      beg = holder_beg;
      beg_min = holder_min;
      holder_min = holder_min + class_min;
      if (holder_min >= 60) {
         mins();
   }
      print(' 2 урок: $beg $beg_min - $holder_beg $holder_min');
      if (double_class == 1) {
        first_class_h_end = holder_beg.toString();
        first_class_m_end = holder_min.toString();
        first_class_m = beg_min.toString();
        if (beg_min < 10){
          first_class_m = '0' + first_class_m;
        }
        if(holder_min < 10){
          first_class_m_end = '0' + first_class_m_end;
        }
        first_double = first_double + '-' + holder_beg.toString() + ':' + first_class_m_end;
        second_lesson = beg.toString() + ':' + first_class_m + '-' + holder_beg.toString() + ':' + first_class_m_end;
      }else if (double_class == 2){

        second_class_h_end = holder_beg.toString();
        second_class_m_end = holder_min.toString();
        second_class_m = beg_min.toString();
        if (beg_min < 10){
          second_class_m = '0' + second_class_m;
        }

        if(holder_min < 10){
          second_class_m_end = '0' + second_class_m_end;
        }
        second_double = second_double + '-' + holder_beg.toString() + ':' + second_class_m_end;
        forth_lesson = beg.toString() + ':' + second_class_m + '-' + holder_beg.toString() + ':' + second_class_m_end;
      }else if (double_class == 3){
        third_class_h_end = holder_beg.toString();
        third_class_m_end = holder_min.toString();
        third_class_m = beg_min.toString();
        if (beg_min < 10){
          third_class_m = '0' + third_class_m;
        }

        if(holder_min < 10){
          third_class_m_end = '0' + third_class_m_end;
        }
        third_double = third_double + '-' + holder_beg.toString() + ':' + third_class_m_end;
        sixth_lesson = beg.toString() + ':' + third_class_m + '-' + holder_beg.toString() + ':' + third_class_m_end;
      }else if(double_class == 4){
        four_class_h_end = holder_beg.toString();
        four_class_m_end = holder_min.toString();
        four_class_m = beg_min.toString();
        if (beg_min < 10){
          four_class_m = '0' + four_class_m;
        }

        if(holder_min < 10){
          four_class_m_end = '0' + four_class_m_end;
        }
        fourth_double = fourth_double + '-' + holder_beg.toString() + ':' + four_class_m_end;
        eighth_lesson = beg.toString() + ':' + four_class_m + '-' + holder_beg.toString() + ':' + four_class_m_end;
      }
      beg = holder_beg;
      beg_min = holder_min;
      holder_min = holder_min + long_break;
      if (holder_min >= 60) {
         mins();
   }    
      if (double_class == 1){
        print('Перемена: $beg $beg_min - $holder_beg $holder_min');
        if (beg_min < 10){
          breaks = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
        }else if (holder_min < 10){
          breaks = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
        }else if (beg_min < 10 && holder_min < 10){
          breaks = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
        }else{
          breaks = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
        }
      beg = holder_beg;
      beg_min = holder_min;
      }else if (double_class == 2){
        holder_min = holder_min + 10;
        if (beg_min < 10){
          lunch = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
        }else if (holder_min < 10){
          lunch = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
        }else if (beg_min < 10 && holder_min < 10){
          lunch = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
        }else{
          lunch = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
        }
        print('Обед: $beg $beg_min - $holder_beg $holder_min');
      beg = holder_beg;
      beg_min = holder_min;
      }else if (double_class == 3){
        if (beg_min < 10){
          breaks2 = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
        }else if (holder_min < 10){
          breaks2 = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
        }else if (beg_min < 10 && holder_min < 10){
          breaks2 = beg.toString() + ':' + '0' + beg_min.toString() + '-' + holder_beg.toString() + ':' + '0' + holder_min.toString();
        }else{
          breaks2 = beg.toString() + ':' + beg_min.toString() + '-' + holder_beg.toString() + ':' + holder_min.toString();
        }
        print('Перемена: $beg $beg_min - $holder_beg $holder_min');
      beg = holder_beg;
      beg_min = holder_min;
      }
      double_class++;
      
      
      
      
    }


   


  
}