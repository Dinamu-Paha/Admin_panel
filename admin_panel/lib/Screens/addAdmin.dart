// ignore_for_file: deprecated_member_use

import 'dart:convert';
import 'dart:html';
import 'package:admin_panel/Components/text_field_container.dart';

import '../Components/colors.dart';
import 'package:flutter/material.dart';
import '../Components/rounded_button.dart';
import '../Components/rounded_email_field.dart';
import '../Components/rounded_input_field.dart';
import '../Components/rounded_mobile_filed.dart';
import 'Screens/adminDashboardPage.dart';



class AddAdmin extends StatefulWidget{
  @override
  _AddAdminState createState() =>_AddAdminState();
}

class _AddAdminState extends State<AddAdmin>{
 

  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
  
   
   var size;
   return Container(
    alignment: Alignment.center,
    
   
    width: MediaQuery.of(context).size.width -300,
    height: MediaQuery.of(context).size.height-100,
      padding: EdgeInsets.only(left: 16,top: 25,right: 16),
      /**/
      child: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        width: 500,
        height: 600,
        decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(30),
        
        
        
      ),
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
          RoundedInputField(
            hintText: "First Name",
            onChanged: (value) {},
          ),
          
          RoundedMobileField(
            onChanged: (value) {},
          ),
          RoundedEmailField(
            onChanged: (value){},
          ),
          RoundedButton(
            text: "ADD", 
            press: (){},
          ),
          RoundedButton(
            text: "CANCEL", 
            color: Color.fromARGB(255, 220, 255, 181),
            textColor: Colors.black,
            press: (){},
          ),
           
           
          
       
          SizedBox(
            height: 35,
          ),

         

        ],
      ),
    ),

      ),
      
     
    );
  }



}








 /*Widget buildTextField(String labelText) {
  
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: Material (
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
      )
    );

  }*/

  