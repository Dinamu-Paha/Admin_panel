import 'package:admin_panel/Screens/addAdmin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'adminDashboardPage.dart';


class Dashboard extends StatefulWidget{
  @override
  _DashboardState createState() =>_DashboardState();
}

class _DashboardState extends State<Dashboard>{
  get children => null;

@override
  Widget build(BuildContext context){
     // TODO: implement build
     
     return Container(
alignment: Alignment.center,
    
   
    width: MediaQuery.of(context).size.width -300,
    height: MediaQuery.of(context).size.height-100,
      padding: EdgeInsets.only(left: 16,top: 25,right: 16),

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
        mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => AddAdmin(),
                      ));
                },
                child: Container(
                  height: 80,
                  width: 300,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigoAccent,
                    border: Border.all(color: Colors.white,width: 2.0)
                  ),
                  child: Center(
                      child: Text("Students", style: TextStyle(fontFamily: 'Poppins', fontSize: 40, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 300,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                    border: Border.all(color: Colors.white,width: 2.0)
                ),
                child: Center(
                    child: Text("Lessons", style: TextStyle(fontFamily: 'Poppins', fontSize: 40, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)
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
                  height: 80,
                  width: 300,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent,
                      border: Border.all(color: Colors.white,width: 2.0)
                  ),
                  child: Center(
                      child: Text("Past Papers", style: TextStyle(fontFamily: 'Poppins', fontSize: 40, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 300,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent,
                    border: Border.all(color: Colors.white,width: 2.0)
                ),
                child: Center(
                    child: Text("Student Stats.", style: TextStyle(fontFamily: 'Poppins', fontSize: 40, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)
                ),
              ),
            ],
      ),
       )
      // ignore: prefer_const_constructors
     
      
      
     )
     ;
}
}