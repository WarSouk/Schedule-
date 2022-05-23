import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schedule/pages/calc.dart';
import 'package:schedule/pages/four_hour.dart';
import 'package:schedule/pages/hour_calc.dart';
import 'package:schedule/pages/result.dart';
import 'package:schedule/pages/three.dart';
import 'package:schedule/pages/pop_out.dart';
import 'package:schedule/pages/four.dart';
import 'dart:convert';


import 'package:schedule/pages/three_hour.dart';

TextEditingController hcontroller = new TextEditingController();
TextEditingController mincontroller = new TextEditingController();




class Home extends StatefulWidget {



  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String dropdownvalue = '3';

  var items = [
    '2',
    '3',
    '4',

  ];

  bool status = false;






  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('ScheduleCounter'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: SafeArea(
          minimum: const EdgeInsets.all(15.0),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Начало пар:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins-Bold',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),),


              ],
            ), //Beggining
            Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Form(
                        key: formKey,
                      // width: 200,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Часы:',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),),
                              SizedBox(height: 5,),
                              Container(
                                width: 85,
                                height: 25,
                                child: TextFormField(

                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(2),
                                  ],

                                  controller: hcontroller,
                                  style: TextStyle(

                                    fontFamily: 'Poppins-Thin',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,

                                  ),

                                  decoration:  InputDecoration(

                                    errorStyle: TextStyle(fontSize: 14),
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: Text('Пойман на ошибке!',
                                          style: TextStyle(
                                            fontFamily: 'Poppins-Bold',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                          ),),
                                          content: Text('Вы оставили поле "Часы" пустым!',
                                          style: TextStyle(
                                            fontFamily: 'Poppins-Thin',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),),
                                          actions: [
                                            TextButton(
                                                onPressed: () => Navigator.pop(context),
                                                child: Text('OK',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins-Bold',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  color: Colors.deepPurple,
                                                ),))
                                          ],
                                        )
                                      );

                                    }else if(!RegExp(r'^[0-9]+$').hasMatch(value!)){
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            title: Text('Пойман на ошибке!',
                                              style: TextStyle(
                                                fontFamily: 'Poppins-Bold',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                              ),),
                                            content: Text('Вы ввели недопустимый символ в поле "Часы"!',
                                              style: TextStyle(
                                                fontFamily: 'Poppins-Thin',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),),
                                            actions: [
                                              TextButton(
                                                  onPressed: () => Navigator.pop(context),
                                                  child: Text('OK',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins-Bold',
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 16,
                                                      color: Colors.deepPurple,
                                                    ),))
                                            ],
                                          )
                                      );
                                    }else{
                                      return null;
                                    }
                                  },
                                  keyboardType: TextInputType.number,
                                ),
                              )
                            ],
                          ), //HoursTextField
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Минуты:',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),),
                              SizedBox(height: 5,),
                              Container(
                                width: 85,
                                height: 25,
                                child: TextFormField(

                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(2),
                                  ],
                                  controller: mincontroller,
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Thin',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,

                                  ),
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            title: Text('Пойман на ошибке!',
                                              style: TextStyle(
                                                fontFamily: 'Poppins-Bold',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                              ),),
                                            content: Text('Вы оставили поле "Минуты" пустым!',
                                              style: TextStyle(
                                                fontFamily: 'Poppins-Thin',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),),
                                            actions: [
                                              TextButton(
                                                  onPressed: () => Navigator.pop(context),
                                                  child: Text('OK',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins-Bold',
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 16,
                                                      color: Colors.deepPurple,
                                                    ),))
                                            ],
                                          )
                                      );
                                    }else if(!RegExp(r'^[0-9]+$').hasMatch(value)){
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            title: Text('Пойман на ошибке!',
                                              style: TextStyle(
                                                fontFamily: 'Poppins-Bold',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                              ),),
                                            content: Text('Вы ввели недопустимый символ в поле "Минуты"!',
                                              style: TextStyle(
                                                fontFamily: 'Poppins-Thin',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),),
                                            actions: [
                                              TextButton(
                                                  onPressed: () => Navigator.pop(context),
                                                  child: Text('OK',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins-Bold',
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 16,
                                                      color: Colors.deepPurple,
                                                    ),))
                                            ],
                                          )
                                      );
                                    }else{
                                      return null;
                                    }
                                  },
                                  keyboardType: TextInputType.number,
                                ),
                              )
                            ],
                          ) //MinuetesTextField
                        ],

                      )
                    ) //TimeContainer
                  ],
                ), //Time
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Количество пар:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins-Bold',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),),


                  ],
                ), //Number of classes
                SizedBox(height: 10,),
                SizedBox(width: 80, height: 30,
                child:  DropdownButton(
                  isExpanded: true,
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items, style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {

                      setState(() {
                        dropdownvalue = newValue!;





                      });


                  },
                ),
                ), //dropdownButton
                SizedBox(height: 25,),
                Text('Полные пары / Часовые пары',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,)
                ),
                SizedBox(height: 10,),
                FlutterSwitch(
                  width: 125.0,
                  height: 40.0,

                  toggleSize: 45.0,
                  value: status,
                  borderRadius: 30.0,
                  padding: 8.0,
                  showOnOff: false,
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),

                SizedBox(height: 30,),

                ElevatedButton.icon(onPressed: (){

                  if (formKey.currentState!.validate()){
                    if (int.parse(hcontroller.text) <= 8 && int.parse(mincontroller.text) <= 29){
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Пойман на ошибке!',
                              style: TextStyle(
                                fontFamily: 'Poppins-Bold',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),),
                            content: Text('Пары не могут начинаться раньше 8:30',
                              style: TextStyle(
                                fontFamily: 'Poppins-Thin',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('OK',
                                    style: TextStyle(
                                      fontFamily: 'Poppins-Bold',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.deepPurple,
                                    ),))
                            ],
                          )
                      );
                    }else if (int.parse(hcontroller.text) >= 15 && int.parse(mincontroller.text) >= 29){
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Пойман на ошибке!',
                              style: TextStyle(
                                fontFamily: 'Poppins-Bold',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),),
                            content: Text('Пары не могут начинаться позже 15:30',
                              style: TextStyle(
                                fontFamily: 'Poppins-Thin',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('OK',
                                    style: TextStyle(
                                      fontFamily: 'Poppins-Bold',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.deepPurple,
                                    ),))
                            ],
                          )
                      );
                    }else{
                      if (dropdownvalue == '2'){
                        if (status == true){
                          count_two_h();
                          Navigator.pushNamed(context, '/result2');
                        }else{
                          count_two();
                          Navigator.pushNamed(context, '/result');
                        }

                      }else if(dropdownvalue == '3'){
                        if (status == true){
                          count_three_h();
                          Navigator.pushNamed(context, '/result3');
                        }else{
                          count_three();
                          Navigator.pushNamed(context, '/result5');
                        }
                      }else if (dropdownvalue == '4'){
                        if (status == true){
                          count_four_h();
                          Navigator.pushNamed(context, '/result4');
                        }else{
                          count_four();
                          Navigator.pushNamed(context, '/result6');
                        }
                      }

                    }
                  }













                  // if (dropdownValue == 2){
                  //   count_two();
                  //
                  //
                  // }

                },
                  icon: Icon(Icons.create), label: Text('Рассчитать!', style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 30), primary: Colors.deepPurple),

                ),

              ],
            )
          ],
        )
      ),
      );

  }

}







