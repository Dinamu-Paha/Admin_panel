import 'dart:convert';
import 'dart:html';
import 'dart:js';
import 'package:admin_panel/Components/colors.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  String dropdownvalue = 'සිංහල';

  List<String> items = <String>[
    'සිංහල',
    'ගණිතය',
    'බුද්ධ ධර්මය',
    'ඉංග්‍රීසි',
    'පරිසරය',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width -300,
      height: MediaQuery.of(context).size.height-100,
      padding: EdgeInsets.only(left: 16,top: 25,right: 16),

      child: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        width: 500,
        height: 700,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(160, 158, 158, 158),
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              )
            ]
        ),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.fromLTRB(150, 0, 150, 0),
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      height: 60,
                      width: 250,
                      //width: MediaQuery.of(context).size.width-0,
                      decoration: BoxDecoration(
                          color: AppColor.compColor,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                          child: Text('Create Quiz', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.bold),)
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    width: MediaQuery.of(context).size.width-200,
                    decoration: BoxDecoration(
                      //border: Border.all(width: 0.4),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        offset: const Offset(
                          2.0,
                          2.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),],
                    ),
                    child: DataTable(
                        columns: [
                          DataColumn(
                            label: Text('ID', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                          DataColumn(
                            label: Text('Question Name',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                          DataColumn(
                            label: Text(''),
                          ),
                          DataColumn(
                            label: Text(''),
                          ),
                        ],
                        rows: [

                          DataRow(cells: [
                            DataCell(Text('1')),
                            DataCell(Text('Arshik')),
                            DataCell(IconButton(onPressed: (){}, icon: Icon(Icons.edit)),),
                            DataCell(IconButton(onPressed: (){}, icon: Icon(Icons.delete)),),
                          ])
                        ]),
                  ),
                  SizedBox(height: 40,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
