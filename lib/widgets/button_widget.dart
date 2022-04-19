import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundcolor;
  final String text;
  final Color textColor;

   ButtonWidget({ Key? key,

   required this.backgroundcolor, 
   required this.text, 
   required this.textColor 

   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height/14,
      decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.circular(40.0),
      ),
       child: Center( //to center the text of button
         child: Text(
           text, style: TextStyle(
             fontSize: 24.0,
             color: textColor,
           ),
         ),
       ), //mediaquery is to fit for different size mobile adjustment
    );
  }
}