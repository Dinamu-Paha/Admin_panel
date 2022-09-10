import 'dart:convert';
import 'dart:html';
import 'dart:js';
import 'package:admin_panel/Components/colors.dart';
import 'package:flutter/material.dart';


class AddQuestions extends StatefulWidget{
  @override
  _AddQuestionsState createState() =>_AddQuestionsState();
}

class _AddQuestionsState extends State<AddQuestions>{
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
                  SizedBox(height: 40,
                  ),
                   TextField(
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Topic',
                    ),
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
                   ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Prescription',
                    ),
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                    minLines: 1,
                    maxLines: 5,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        height: 250,
                        width: 250,
                        //height: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
                        //width: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1)
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
                        height: 250,
                        width: 250,
                        //height: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
                        //width: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1)
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
                        //height: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
                        //width: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1)
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
                        height: 250,
                        width: 250,
                        //height: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
                        //width: MediaQuery.of(context).size.width-(40+(MediaQuery.of(context).size.width)/2),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1)
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
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Postcription',
                    ),
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                    minLines: 1,
                    maxLines: 5,
                  ),
                  SizedBox(height: 30,),
                  Text('Answers', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 22, ),),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '1. Answer',
                    ),
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                    minLines: 1,
                    maxLines: 5,
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '2. Answer',
                    ),
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                    minLines: 1,
                    maxLines: 5,
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '3. Answer',
                    ),
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                    minLines: 1,
                    maxLines: 5,
                  ),
                  SizedBox(height: 30,),
                  Text('Correct Answer', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 22, ),),
                  SizedBox(height: 20,),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Number of the CORRECT ANSWER',
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                  ),
                  SizedBox(height: 50,),
                  GestureDetector(
                    onTap: (){
                      // addQuestion();
                    },
                    child: Container(
                      height: 40,
                      width: 170,
                      //width: MediaQuery.of(context).size.width-0,
                      decoration: BoxDecoration(color: AppColor.compColor),
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