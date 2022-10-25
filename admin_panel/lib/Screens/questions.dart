import 'dart:convert';
import 'dart:html';
import 'dart:js';
import 'package:admin_panel/Components/colors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

  String dropdownvalue = 'Subject';
  String dropdownvalue2 = 'SubTopic';

  List<String> items = <String>[
    'Subject',
    'සිංහල',
    'ගණිතය',
    'බුද්ධ ධර්මය',
    'ඉංග්‍රීසි',
    'පරිසරය',
  ];

  List<String> items1 = <String>[
    'SubTopic',
  ];

  Future <List<dynamic>> getSubtopics(sub_id)async {

    print('object');
      final res = await http.get(
          Uri.parse("http://192.168.43.90:8080/getquestion")
        // headers: {'Content-Type': 'application/json'}
      );

      List<dynamic> responsejson = json.decode(utf8.decode(res.bodyBytes));
      print(responsejson);
      return responsejson;
  }

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
                          width: (MediaQuery.of(context).size.width-300)/5,
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

                          child:
                          FutureBuilder<List<dynamic>>(
                            future: getSubjectsAndSubtopics(),
                            builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot ){
                                int? subjectLen = snapshot.data?.length;

                               // print(subjects);
                              if(snapshot.hasData){

                                return DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    // Initial Value
                                    value: dropdownvalue,

                                    // Down Arrow Icon
                                    icon: const Icon(Icons.keyboard_arrow_down),

                                    // Array list of items
                                    items: subjects.map((String items) {
                                      // print(subjects);
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items,),
                                      );
                                    }).toList(),

                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (newValue) {
                                      print(newValue);
                                      print(subjects);
                                      for(var i = 0 ; i < subjectLen! ; i++){
                                        if(newValue == snapshot.data?[i]["subject"]){
                                          subjectIndex = i;
                                        }
                                      }
                                      int Id = snapshot.data?[subjectIndex]["subjectId"];
                                      // print(subjectId);
                                      setState(() {
                                        subjectId = Id;
                                        dropdownvalue = newValue!.toString();
                                      });
                                    },
                                  ),
                                );
                              }
                              else{
                                return Container(
                                  child: Text("Loading"),
                                );
                              }
                            }
                          )

                        ),
                        SizedBox(width: 85,),
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
                              value: dropdownvalue2,

                                          // Down Arrow Icon
                                          icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: items1.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items,),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue2 = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
            ]
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
                            ],

                            ),
                            DataRow(cells: [
                              DataCell(Text('1')),
                              DataCell(Text('Arshik')),
                              DataCell(IconButton(onPressed: (){}, icon: Icon(Icons.edit)),),
                              DataCell(IconButton(onPressed: (){}, icon: Icon(Icons.delete)),),
                            ],

                            )
                          ],

                      ),
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
