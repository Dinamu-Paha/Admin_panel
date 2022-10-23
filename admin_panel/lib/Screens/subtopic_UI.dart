import 'lessons.dart';
import 'package:flutter/material.dart';
import 'adminDashboardPage.dart';

//import 'Lesson_UI.dart';

class SubTopic_UI extends StatefulWidget {
  var subject;
  SubTopic_UI({Key? key, this.subject}) : super(key: key);

  @override
  State<SubTopic_UI> createState() => _SubTopic_UIState();
}

class _SubTopic_UIState extends State<SubTopic_UI> {

  List<Color> colors = [
    Colors.blueGrey.withOpacity(0.3),
    Colors.orange.withOpacity(0.3),
    Colors.deepPurple.withOpacity(0.3),
    Colors.lightGreenAccent.withOpacity(0.3),
    Colors.cyan.withOpacity(0.3),
    Colors.orangeAccent.withOpacity(0.3),
    Colors.orangeAccent.withOpacity(0.3),
    Colors.tealAccent.withOpacity(0.3),
    Colors.lightBlueAccent.withOpacity(0.3),
    Colors.purpleAccent.withOpacity(0.3),
  ];

  List sub_topic = [
    'අප අවට සත්තු',
    'අපේ යහපැවැත්ම',
    'පොලොව හා අහස',
    'අප හා වෙළඳ පොළ',
    'පැලෑටි හා ගස්වැල්',
    'අපි ලක් වැසියෝ',
    'අප පරිහරණය කරන දේ',
    'අපේ ආහාර',
    'ආරක්ෂාව හා පරිස්සම',
  ];
  
  get child => null;

  @override
  Widget build(BuildContext context) {
    
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
   
        child: Scaffold(
          
            
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                children: [
                  
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    height: MediaQuery.of(context).size.height +25,
                    decoration: BoxDecoration(
                      //color: Colors.cyanAccent.withOpacity(0.3),
                    ),
                    child: Center(
                      child: ListView(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => Lessons(),
                                  ));
                            },
                            child: Column(
                             
                              children: [
                               
                                 GestureDetector(
                            child: Container(
                             alignment: Alignment.center,
                               width: 120,
                               height:30,
                                margin: EdgeInsets.fromLTRB(40, 0, 40, 30),
                                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.purpleAccent.withOpacity(0.8),),
                                 
                                  child:Row(
                                 
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                    Text("Add Topic",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),)
                                  ],

                                 )
                             
                            ),
              ),
                                Container(
                                  width: 535,
                                  height: 50,
                                  margin: EdgeInsets.fromLTRB(150, 0, 150, 30),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.cyan.withOpacity(0.8),),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                      children:[
                                        Text('අප අවට සත්තු', style: TextStyle(fontSize: 25),),
                                        SizedBox(width: 30,),
                                        //IconButton(onPressed: showToast, icon: Icon(Icons.arrow_drop_down)),
                                        ]),
                                ),
                                
                              ],
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,
                              margin: EdgeInsets.fromLTRB(150, 0, 150, 30),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.greenAccent.withOpacity(0.8),),
                              child: Center(child: Text('අපේ යහපැවැත්ම', style: TextStyle(fontSize: 25),),),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,
                              margin: EdgeInsets.fromLTRB(150, 0, 150, 30),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.blue.withOpacity(0.8),),
                              child: Center(child: Text('පොලොව හා අහස', style: TextStyle(fontSize: 25),),),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,
                              margin: EdgeInsets.fromLTRB(150, 0, 150, 30),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.lightGreenAccent.withOpacity(0.8),),
                              child: Center(child: Text('අප හා වෙළඳ පොළ', style: TextStyle(fontSize: 25),),),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,
                              margin: EdgeInsets.fromLTRB(150, 0, 150, 30),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.orange.withOpacity(0.8),),
                              child: Center(child: Text('පැලෑටි හා ගස්වැල්', style: TextStyle(fontSize: 25),),),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,
                              margin: EdgeInsets.fromLTRB(150, 0, 150, 30),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.pinkAccent.withOpacity(0.8),),
                              child: Center(child: Text('අපි ලක් වැසියෝ', style: TextStyle(fontSize: 25),),),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,
                              margin: EdgeInsets.fromLTRB(150, 0, 150, 30),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.deepOrangeAccent.withOpacity(0.8),),
                              child: Center(child: Text('අප පරිහරණය කරන දේ', style: TextStyle(fontSize: 25),),),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,
                              margin: EdgeInsets.fromLTRB(150, 0, 150, 30),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.green.withOpacity(0.8),),
                              child: Center(child: Text('අපේ ආහාර', style: TextStyle(fontSize: 25),),),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              width: 80,
                              height: 50,
                              margin: EdgeInsets.fromLTRB(150, 0, 150, 30),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.yellowAccent.withOpacity(0.8),),
                              child: Center(child: Text('ආරක්ෂාව හා පරිස්සම', style: TextStyle(fontSize: 25),),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ),
                 
                ],
          ),
        
    ),
    
      )

        )
        )
    );

  }
}
