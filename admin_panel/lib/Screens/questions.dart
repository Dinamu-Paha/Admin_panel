import 'dart:convert';
import 'dart:html';
import 'dart:js';
import 'package:admin_panel/Components/colors.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

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
                    Row(
                      children: [
                        Container(
                          width: (MediaQuery.of(context).size.width-300)/4,
                          padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
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

                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              // Initial Value
                              value: dropdownvalue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items,),
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
                          ),
                        ),
                        SizedBox(width: 92,),
                        Container(
                          width: (MediaQuery.of(context).size.width-300)/3,
                          padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
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

                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              // Initial Value
                              value: dropdownvalue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items,),
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
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: MediaQuery.of(context).size.width-300,
                      padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
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

                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          // Initial Value
                          value: dropdownvalue,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items,),
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
                      ),
                    ),
                    SizedBox(height: 50,),
                    Container(
                      width: MediaQuery.of(context).size.width-300,
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
                              label: Text('Question',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
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
                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        height: 50,
                        width: 180,
                        //width: MediaQuery.of(context).size.width-0,
                        decoration: BoxDecoration(
                            color: AppColor.compColor,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                            child: Text('Add Question', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.bold),)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}
