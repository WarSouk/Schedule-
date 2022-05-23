import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schedule/pages/expansion_pannel_demo.dart';
import 'package:schedule/pages/hour_calc.dart';

class ResultTwoH extends StatefulWidget {
  @override
  _ResultTwoH createState() => _ResultTwoH();
}

class _ResultTwoH extends State<ResultTwoH> {
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
            Часовая пара
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
            Часовая пара
            ''',


    ),

  ];
}