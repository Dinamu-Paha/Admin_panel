import 'dart:convert';
//import 'dart:html';
//import 'dart:js';
import 'package:admin_panel/Components/colors.dart';
import 'package:flutter/material.dart';


class AddQuestions extends StatefulWidget{
  @override
  _AddQuestionsState createState() =>_AddQuestionsState();
}

class _AddQuestionsState extends State<AddQuestions>{

  String dropdownvalue = 'සිංහල';

  List<String> items = <String>[
    'සිංහල',
    'ගණිතය',
    'බුද්ධ ධර්මය',
    'ඉංග්‍රීසි',
    'පරිසරය',
  ];
  
  @override
  Widget build(BuildContext context){
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
              //width: MediaQuery.of(context).size.width,
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
                      SizedBox(width: 20,),
                      Container(
                        width: (MediaQuery.of(context).size.width)/3,
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
                  SizedBox(height: 20,),
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
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Prescription',
                      ),
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                      minLines: 1,
                      maxLines: 5,
                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        height: 250,
                        width: 250,
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                        //height: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
                        //width: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
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
                        child: Center(
                          child: Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.upload)),
                              Text('Upload Image',style: TextStyle(fontFamily: 'Poppins', color: Colors.lightBlue, fontSize: 15),),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        height: 250,
                        width: 250,
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                        //height: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
                        //width: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
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
                        child: Center(
                          child: Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.upload)),
                              Text('Upload Image',style: TextStyle(fontFamily: 'Poppins', color: Colors.lightBlue, fontSize: 15),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                     mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        height: 250,
                        width: 250,
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                        //height: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
                        //width: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
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
                        child: Center(
                          child: Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.upload)),
                              Text('Upload Image',style: TextStyle(fontFamily: 'Poppins', color: Colors.lightBlue, fontSize: 15),),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        height: 250,
                        width: 250,
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                        //height: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
                        //width: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
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
                        child: Center(
                          child: Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.upload)),
                              Text('Upload Image',style: TextStyle(fontFamily: 'Poppins', color: Colors.lightBlue, fontSize: 15),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Container(
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
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Postcription',
                      ),
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                      minLines: 1,
                      maxLines: 5,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text('Answers', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 22, ),),
                  SizedBox(height: 20,),
                  Container(
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
                    child: Container(
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
                      child: Container(
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
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '1. Answer',
                          ),
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                          minLines: 1,
                          maxLines: 5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
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
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '2. Answer',
                      ),
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                      minLines: 1,
                      maxLines: 5,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
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
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '3. Answer',
                      ),
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                      minLines: 1,
                      maxLines: 5,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text('Correct Answer', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 22, ),),
                  SizedBox(height: 20,),
                  Container(
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
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Number of the CORRECT ANSWER',
                      ),
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text('Review of question', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 22, ),),
                  SizedBox(height: 20,),
                  Container(
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
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Review',
                      ),
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                      minLines: 1,
                      maxLines: 5,
                    ),
                  ),
                  SizedBox(height: 50,),
                  GestureDetector(
                    onTap: (){
                      // addQuestion();
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
                  SizedBox(height: 40,),
                ],
              ),
            ),
          ),
      ),
       )

      
      
    );
  }
}