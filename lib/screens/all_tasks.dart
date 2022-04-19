import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/colors/app_colors.dart';
import 'package:task_manager/widgets/task_widget.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List myData =[
      "Try harder",
      "Try smarter",
      "My task"
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 20.0),
            alignment: Alignment.topLeft,
            child: Icon(Icons.arrow_back, color: AppColors.secondaryColor,),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height/3.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/header1.jpg"
                )
              )
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                Icon(Icons.home, color: AppColors.secondaryColor,),
                SizedBox(width: 10.0,),
                Container( 
                  child: Icon(Icons.add, color: Colors.white,size: 20.0,),//this container for 2nd icon round bg color
                  width: 25.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.black,
                  ),
                ),

                Expanded(child: Container()), // it is to move icons right side using expanded container
                Icon(
                  Icons.calendar_today,
                  color: AppColors.secondaryColor,
                ),
                SizedBox(
                  width: 10.0,
                ),

                Text("2", style: TextStyle(
                  fontSize: 20.0,
                  color: AppColors.secondaryColor,
                ),)
              ],
            ),
          ),
          SizedBox(height: 25.0,),
        Flexible(
          child: ListView.builder(
            itemCount: myData.length, //amar data length porjonto widget hote thakbe
            itemBuilder: (context, index){ //data gulo array hisabe ace jonno index nite hoice
            return Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
              child: TaskWidget(
                text: myData[index], 
                color: Colors.blueGrey),
            );
          }),
        )
        ],
      ),
    );
  }
}