// ignore_for_file: deprecated_member_use

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
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
        padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 40),
        color:color,
        onPressed: press,
        
       child: Text(
        text,
        style: TextStyle(color: AppColor.whiteFont),
        )
        ),
        ),
    );
  }
}
