import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/colors/app_colors.dart';

class TextFieldWidget extends StatelessWidget {

  final TextEditingController textController;
  final String hintText;
  final double? borderRadius;
  final int? maxLines; // ? sign is for optional perameter (not required)

   TextFieldWidget({ Key? key, 

   required this.textController, 
   required this.hintText, 
   this.borderRadius=30.0,
   this.maxLines=1,

   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
                  maxLines: maxLines,
                  controller: textController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.textHolder,
                    hintText: hintText,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(borderRadius!), //this border is for focused one field
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1
                      )
                      ),
                      enabledBorder: OutlineInputBorder( // this one for unfocused one
                          borderRadius: BorderRadius.circular(borderRadius!), // ! sign for null check
                          borderSide:
                              BorderSide(color: Colors.white, width: 1))
                  )
                );
  }
}