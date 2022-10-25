import 'package:admin_panel/Screens/addAdmin.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import '../Components/colors.dart';


class AdminDash extends StatefulWidget{
  @override
  _AdminDashState createState() =>_AdminDashState();
}
class _AdminDashState extends State<AdminDash>{

  static final List<SubjectAccess>accessData =[

    SubjectAccess('Sinhala', 10, Colors.pink),
    SubjectAccess('Math', 5, Colors.black),
    SubjectAccess('Environment', 7, Colors.green),
    SubjectAccess('English', 3, Colors.yellow),
    SubjectAccess('Buddhism', 6, Colors.purple),

  ];
  
  get labelAccessorFn => null;
  @override
  Widget build(BuildContext context) {

    List<charts.Series<SubjectAccess,String>> series =[
      charts.Series(
        data: accessData,
        id: "Subject Access",
        domainFn: (SubjectAccess pops, _)=>pops.subject,
        measureFn: (SubjectAccess pops, _)=>pops.studentcount,
        colorFn: (SubjectAccess pops, _)=>
          charts.ColorUtil.fromDartColor(pops.barColor)),
         // labelAccessorFn:(SubjectAccess row, _)=> "${row.Subjects}"
      
    ];
    return  Container(
   // ignore: unnecessary_new
  
   //child: Container(

    

//color: Colors.grey[300],
    alignment: Alignment.center,
    
   
    width: MediaQuery.of(context).size.width -300,
    height: MediaQuery.of(context).size.height-100,
      padding: EdgeInsets.only(left: 16,top: 25,right: 16),
      /**/
      child: Container(
        
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        width: 1150,
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
       
       
       child: Column(

        
        
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:const EdgeInsets.all(12.0),
            child: Center(
              child: Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: [
                  SizedBox(
                   width: 130.0,
                   height: 130.0,
                   child: Card (
                    color: Color.fromARGB(255,55, 146, 55),
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)
                       ),
                       child: Center(
                        child:Padding(
                          padding: const EdgeInsets.all(8.0) ,
                          child: Column(
                            children: [
                              Image.asset("assets/images/students.png", width: 55.0,),
                              SizedBox(height: 10.0),
                              Text("Students",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0
                                 ),),
                                 SizedBox(
                                  height: 5.0,
                                 ),
                                 Text("56 Students", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100
                                 )),
                            ]),
                        ) ),
                   ), 
                  ),
                  SizedBox(
                   width: 130.0,
                   height: 130.0,
                   child: Card (
                    color: Color.fromARGB(255,55, 146, 55),
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)
                       ),
                       child: Center(
                        child:Padding(
                          padding: const EdgeInsets.all(8.0) ,
                          child: Column(
                            children: [
                              Image.asset("assets/images/books.png", width: 55.0,),
                              SizedBox(height: 10.0),
                              Text("Subjects",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0
                                 ),),
                                 SizedBox(
                                  height: 5.0,
                                 ),
                                 Text("6 Subjects", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100
                                 )),
                            ]),
                        ) ),
                   ), 
                  ),
                    GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => AddAdmin(),
                      ));
                },
                child: Container(
                  height: 380,
                  width: 700,
                  margin: EdgeInsets.fromLTRB(0, 5,600, 0),
                  decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(160, 157, 158, 158),
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
       child: Center(
        
        child: Column(
          children: [
            Padding(padding:const EdgeInsets.all(8.0) ),
            Text(
              
              "Daily Subject Access",
              style: TextStyle(fontSize: 24.0,),),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: charts.BarChart(
                      series,
                      animate: true,
                      animationDuration: Duration(seconds: 3),
                      behaviors: [
                        new charts.ChartTitle('Subjects',
            behaviorPosition: charts.BehaviorPosition.bottom,
            titleOutsideJustification:
                charts.OutsideJustification.middleDrawArea),
                new charts.ChartTitle('Student Count',
            behaviorPosition: charts.BehaviorPosition.start,
            titleOutsideJustification:
                charts.OutsideJustification.middleDrawArea),
        
                      ],
                      
                  ),
              )
          ],
        ),
        
        )

                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(15),
                  //   color: Colors.indigoAccent.withOpacity(0.8),
                  //   border: Border.all(color: Colors.white,width: 2.0)
                  // ),
                  
                  
                ),
                
              ),
              
                  
                ],
              ),
              ),
              
          )
        ],
       ),
      
   
  
    )
     );
    
  }
 
}
 class SubjectAccess {
    final String subject;
    final int studentcount;
    final Color barColor;

SubjectAccess(this.subject,this.studentcount,this.barColor);
  }