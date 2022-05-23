import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schedule/pages/expansion_pannel_demo.dart';
import 'package:schedule/pages/four.dart';

class ResultFour extends StatefulWidget {
  @override
  _ResultFour createState() => _ResultFour();
}

class _ResultFour extends State<ResultFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ScheduleCounter'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true ,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: itemData.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionPanelList(
              animationDuration: Duration(milliseconds: 1000),

              children: [
                ExpansionPanel(
                  body: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[


                        Text(
                          itemData[index].discription,

                          style: TextStyle(
                            fontFamily: 'Poppins-Bold',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,),
                        ),
                      ],
                    ),
                  ),
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Text(

                        itemData[index].headerItem,

                        style: TextStyle(
                          fontFamily: 'Poppins-Bold',
                          fontWeight: FontWeight.w700,
                          fontSize: 16,

                        ),
                      ),
                    );
                  },
                  isExpanded: itemData[index].expanded,
                )
              ],
              expansionCallback: (int item, bool status) {
                setState(() {
                  itemData[index].expanded = !itemData[index].expanded;
                });
              },
            );
          },
        ),
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: '1 пара: $first_double',
      discription:'''
            1 урок: $first_lesson
            Пятиминутка: $first_short_break_s - $first_short_break_e
            2 урок: $second_lesson
            ''',


    ),
    ItemModel(
      headerItem: 'Перемена: $breaks',
      discription:'''10 минут
            ''',


    ),
    ItemModel(
      headerItem: '2 пара: $second_double',
      discription:'''
            1 урок: $third_lesson
            Пятиминутка: $second_short_break_s - $second_short_break_e
            2 урок: $forth_lesson
            ''',


    ),
    ItemModel(
      headerItem: 'Обед: $lunch',
      discription:'''Можно плотно покушать
            ''',


    ),
    ItemModel(
      headerItem: '3 пара: $third_double',
      discription:'''
            1 урок: $fifth_lesson
            Пятиминутка: $third_short_break_s - $third_short_break_e
            2 урок: $sixth_lesson
            ''',


    ),
    ItemModel(
      headerItem: 'Перемена: $breaks2',
      discription:'''10 минут
            ''',


    ),
    ItemModel(
      headerItem: '4 пара: $fourth_double',
      discription:'''
            1 урок: $seventh_lesson
            Пятиминутка: $four_short_break_s - $four_short_break_e
            2 урок: $eighth_lesson
            ''',


    ),


  ];
}