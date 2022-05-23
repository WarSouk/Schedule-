
void main(){
  int class_min = 40;
  int short_break = 5;
  int long_break = 10;
  int classes = 2;
  int beg = 8;
  int holder_beg = 0;
  int beg_min = 30;
  int holder_min = 0;
  int double_class = 1;

  int first_class_h = 0;
  int first_class_m = 0;
  int first_class_h_end = 0;
  int first_class_m_end = 0;

  int second_class_h = 0;
  int second_class_m = 0;
  int second_class_h_end = 0;
  int second_class_m_end = 0;

  int first_short_break;
  int second_class;
  int first_break;
  int third_class;
  int second_short_break;
  int forth_class;
  int fifth_class;
  int third_short_break;
  int sixth_class;
  void mins(){
   do {
    holder_min = holder_min - 60;
    holder_beg++;
  }while(holder_min >= 60);
}
 
  if (classes == 2){
    for (int i = 0; i < 2; i++){
      holder_beg = beg;
      holder_min = beg_min + class_min;
      if (holder_min >= 60) {
         mins();
      }
      print('$double_class пара:');
      print(' 1 урок: $beg $beg_min - $holder_beg $holder_min');
      if (double_class == 1) {
        first_class_h = beg;
        first_class_m = beg_min;
      }else if (double_class == 2){
        second_class_h = beg;
        second_class_m = beg_min;
      }

      beg = holder_beg;
      beg_min = holder_min;
      holder_min = holder_min + short_break;
      if (holder_min >= 60) {
         mins();
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
        first_class_h_end = holder_beg;
        first_class_m_end = holder_min;
      }else if (double_class == 2){
        second_class_h_end = holder_beg;
        second_class_m_end = holder_min;
      }
      beg = holder_beg;
      beg_min = holder_min;
      holder_min = holder_min + long_break;
      if (holder_min >= 60) {
         mins();
   }    
      if (double_class < 2){
        print('Перемена: $beg $beg_min - $holder_beg $holder_min');
      beg = holder_beg;
      beg_min = holder_min;
      }
      double_class++;
      
      
      
      
    }
     
  }

  print('$first_class_h $first_class_m - $first_class_h_end $first_class_m_end');
   print('$second_class_h $second_class_m - $second_class_h_end $second_class_m_end');


  
}