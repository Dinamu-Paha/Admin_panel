import 'package:flutter/material.dart';
import 'colors.dart';

class TextFieldContainer extends StatelessWidget{
    final Widget child;
    const TextFieldContainer( 
      {
       Key? key,
        required this.child,
      }
    ): super(key: key);

    @override
    Widget build(BuildContext context){
      Size size = MediaQuery.of(context).size;
      return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width*0.8,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 220, 255, 181),
          borderRadius: BorderRadius.circular(29),
        ),
        child: child,
      );
    }
  }


