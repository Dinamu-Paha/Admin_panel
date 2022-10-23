// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

import 'colors.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const RoundedButton({
    Key? key, 
    required this.text, 
    required this.press, 
    this.color= Colors.lightGreen, 
     this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60),
      width: size.width * 0.1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.lightGreen,
 padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 40),
        
          ),
       //color:color,
        onPressed: press,
        
       child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        )
        ),
        ),
    );
  }
  
  
}


