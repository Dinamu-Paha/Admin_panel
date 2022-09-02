import 'dart:html';
import '../Components/colors.dart';
import 'package:flutter/material.dart';
import 'Screens/adminDashboardPage.dart';



class AddAdmin extends StatefulWidget{
  @override
  _AddAdminState createState() =>_AddAdminState();
}

class _AddAdminState extends State<AddAdmin>{
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    // TODO: implement build
   return Container(
    width: MediaQuery.of(context).size.width-300,
    height: MediaQuery.of(context).size.height-100,
      padding: EdgeInsets.only(left: 16,top: 25,right: 16),
      child: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
      
      child: ListView(
        children: [
         
          
          Center(
            child: Stack(
              children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color:Theme.of(context).scaffoldBackgroundColor
                      
                    ),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,blurRadius: 10,
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(0,10)
                      )
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:  AssetImage("assets/images/img_4.png"),)

                  ),
                ),
               Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 4,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    color:Colors.green,
                  ),
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                )
               )
              ],
            ),
          ),
          SizedBox(
             height: 35,
          ),
          buildTextField("Full Name"),
          buildTextField("Mobile Number"),
          buildTextField("Email"),
          buildTextField("Date of Birth"),
          buildTextField("Gender"),
          SizedBox(
            height: 35,
          ),
          
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ElevatedButton(
            style: ButtonStyle(
             
        padding:MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 50)) ,
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ))
            ),
            onPressed: null,
            child: const Text("CANCEL",
            style: TextStyle(
              fontSize: 14,
              letterSpacing: 2.2,
              color: Colors.black),
            ),),
          
         
          ElevatedButton(
           style: ButtonStyle(
             
        padding:MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 50)) ,
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ))
            ),
            onPressed: null,
            child: const Text("ADD",
            style: TextStyle(
              fontSize: 14,
              letterSpacing: 2.2,
              color: Colors.green),
            ),
          ),
        ],
          )
        
        
        ],
      ),
    ),
    );
  }
  
 

}

  
 Widget buildTextField(String labelText) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child:TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 3),
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold,
          color: Colors.black,
          
        )
      ),
    ),
    );
    
  }
  

