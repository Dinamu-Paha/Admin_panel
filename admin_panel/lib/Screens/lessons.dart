import 'package:admin_panel/Screens/addAdmin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'adminDashboardPage.dart';

import 'subtopic_UI.dart';


class Lessons extends StatefulWidget{
  @override
  _LessonsState createState() =>_LessonsState();
}

class _LessonsState extends State<Lessons>{
  get children => null;
  // List<Color> colors = [
  //   Colors.purpleAccent.withOpacity(0.8),
  //   Colors.greenAccent.withOpacity(0.8),
  //   Colors.orangeAccent.withOpacity(0.8),
  //   Colors.lightBlue.withOpacity(0.8),
  //   Colors.lightGreenAccent.withOpacity(0.8)
  // ];

 //Assign names to subject variables
  var sub_name1 = "සිංහල";
  var sub_name2 = "ගණිතය";
  var sub_name3 = "ඉංග්‍රීසි";
  var sub_name4 = "පරිසරය";
  var sub_name5 = "බුද්ධ ධර්මය";


  // List subject = [
  //   'සිංහල',
  //   'ගණිතය',
  //   'බුද්ධ ධර්මය',
  //   'ඉංග්‍රීසි',
  //   'පරිසරය',
  // ];


   @override
  Widget build(BuildContext context){
     // TODO: implement build
     
     //Admin menubar is incorporated here
     return Container(
alignment: Alignment.center,
    
   
    width: MediaQuery.of(context).size.width -300,
    height: MediaQuery.of(context).size.height-100,
      padding: EdgeInsets.only(left: 16,top: 25,right: 16),

      child: Container(
         padding: EdgeInsets.all(25),
        alignment: Alignment.center,
        width: 900,
        height: 600,
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
        child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: MediaQuery.of(context).size.width-60,
                  height: MediaQuery.of(context).size.height,
                  child: Center(
                    child: ListView(
                      children: [
                        SizedBox(height: 40,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) => SubTopic_UI(subject: sub_name1,),
                                ));
                          },
                          child: Container(
                            width: 80,
                            height: 70,
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.purpleAccent.withOpacity(0.8),),
                            child: Center(child: Text('සිංහල', style: TextStyle(fontSize: 30),),),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            width: 80,
                            height: 70,
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.greenAccent.withOpacity(0.8),),
                            child: Center(child: Text('ගණිතය', style: TextStyle(fontSize: 30),),),
                          ),
                        ),

                        GestureDetector(
                          child: Container(
                            width: 80,
                            height: 70,
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.lightBlue.withOpacity(0.8),),
                            child: Center(child: Text('ඉංග්‍රීසි', style: TextStyle(fontSize: 30),),),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) => SubTopic_UI(subject:sub_name4),
                                ));
                          },
                          child: Container(
                            width: 80,
                            height: 70,
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.lightGreenAccent.withOpacity(0.8),),
                            child: Center(child: Text('පරිසරය', style: TextStyle(fontSize: 30),),),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) => SubTopic_UI(subject:sub_name4),
                                ));
                          },
                          child: Container(
                            width: 80,
                            height: 70,
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.orangeAccent.withOpacity(0.8),),
                            child: Center(child: Text('බුද්ධ ධර්මය', style: TextStyle(fontSize: 30),),),
                          ),
                        ),
                        
                        SizedBox(height: 100,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
     );
        
      
      // child: SingleChildScrollView(
      //         scrollDirection: Axis.vertical,
      //         child: Container(
      //           width: MediaQuery.of(context).size.width,
      //           child: Column(
      //             children: [
      //               //SizedBox(height: 30,),
      //               ListView.custom(
      //                 childrenDelegate: SliverChildBuilderDelegate((BuildContext, index) {
      //                   return Container(
      //                     height: 70,
      //                     width: 50,
      //                     alignment: Alignment.center,
      //                     margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      //                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: colors[index],),
      //                     child: Text(subject[index],style: TextStyle(fontSize: 30),),
                          
      //                   );
      //                 },
      //                   childCount: 5,
      //                 ),
      //                 shrinkWrap: true,
      //                 padding: EdgeInsets.all(5),
      //                 scrollDirection: Axis.vertical,
      //               ),
      //               GestureDetector(
      //                 onTap: (){
      //                   Navigator.push(
      //                       context,
      //                       MaterialPageRoute(
      //                         builder: (BuildContext context) => AddAdmin(),
      //                       ));
      //                 },
      // // child: ListView(
      // //   children:[
      // //     Row(
      // //     children: [
      // //        SubjectCard(
      // //         padding:  const EdgeInsets.symmetric(vertical: 80,horizontal: 100),
      // //         alignment: Center,
  
      // //       text: "සිංහල", 
      // //       primary:Colors.amberAccent,
      // //       //color: const Color.fromARGB(255, 233, 238, 226),
      // //       textColor: Colors.black,
      // //       press: (){},
      // //     ),
      // //       SubjectCard(
      // //         padding:  const EdgeInsets.symmetric(vertical: 80,horizontal: 100),
      // //         alignment: Center,
      // //          primary:Colors.pinkAccent,
      // //       text: "ගණිතය", 
      // //       press: (){},
      // //     ),
           

      // //     ],
      // //     ),
      // //     Row(
      // //     children: [
      // //        SubjectCard(
      // //         padding:  const EdgeInsets.symmetric(vertical: 80,horizontal: 100),
      // //         alignment: Center,
      // //       text: "බුද්ධ ධර්මය", 
      // //       primary:Colors.pinkAccent,
      // //       //color: const Color.fromARGB(255, 233, 238, 226),
      // //       textColor: Colors.black,
      // //       press: (){},
      // //     ),
      // //       SubjectCard(
      // //         padding:  const EdgeInsets.symmetric(vertical: 80,horizontal: 100),
      // //         alignment: Center,
      // //       text: "ඉංග්‍රීසි", 
      // //       primary:Colors.pinkAccent,
      // //       press: (){},
      // //     ),
           

      // //     ],
      // //     ),
      // //     Row(
      // //     children: [
      // //        SubjectCard(
      // //         padding:  const EdgeInsets.symmetric(vertical: 80,horizontal: 150),
      // //         alignment: Center,
      // //       text: "පරිසරය", 
      // //       primary:Colors.pinkAccent,
      // //       //color: const Color.fromARGB(255, 233, 238, 226),
      // //       textColor: Colors.black,
      // //       press: (){},
      // //     ),
            
           

      // //     ],
      // //     ),
         
      // //   ]
      
      // // )
      //               )
      //             ]
      //           ),
      
      //         ),
      // )
      
    
  }
}

