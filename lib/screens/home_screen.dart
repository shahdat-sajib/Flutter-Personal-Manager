import 'package:flutter/material.dart';
import 'package:task_manager/colors/app_colors.dart';
import 'package:task_manager/screens/all_tasks.dart';
import 'package:task_manager/widgets/button_widget.dart';
import 'package:get/get.dart';

import 'add_task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite, // to get the full height and width
        height: double.maxFinite,
        padding: EdgeInsets.only(left: 20.0, right: 20.0), // to move the text 20 px right
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: "Hello",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                text: "\nYour Friend - Always ready to serve you ",
                style: TextStyle(
                  fontSize: 14,                ),),
                ]
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height/2.5,), //this is for gap between heading text and button

            InkWell( 
              onTap: (){  //for switching to all tasks page when tap the button
                Get.to(()=>AllTasks(), 
                transition: Transition.fade, 
                duration: Duration(seconds: 1));
              },
              child: ButtonWidget(
                backgroundcolor: AppColors.mainColor, //get the color from our colors folder
                text: "Add Task", 
                textColor: Colors.white),
            ),

            SizedBox(height: 20.0,),
            
              InkWell(
                onTap: () {
                //for switching to all tasks page when tap the button
                Get.to(() => AddTask(),
                    transition: Transition.zoom,
                    duration: Duration(milliseconds: 500));
              },
                child: ButtonWidget(
                  backgroundcolor: Colors.white, //get the color from our colors folder
                  text: "View All",
                  textColor: AppColors.smallTextColor),
              )
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,  //to fit the back image to full page
            image: AssetImage(
              "assets/welcome.jpg"
            )
          )
        ),
      ),
    ); 
  }
}