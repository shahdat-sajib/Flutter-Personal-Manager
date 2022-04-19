import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/colors/app_colors.dart';
import 'package:task_manager/widgets/button_widget.dart';
import 'package:task_manager/widgets/task_widget.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myData = ["Try harder", "Try smarter", "My task"];

    final leftEditIcon = Container(
      // forsliding edit icon
      margin: EdgeInsets.only(bottom: 10.0),
      color: Color(0xFF2e3253).withOpacity(0.5),
      child: Icon(
        Icons.edit,
        color: Colors.white,
      ),
      alignment: Alignment.centerLeft,
    );

    final rightDeleteIcon = Container(
      // forsliding edit icon
      margin: EdgeInsets.only(bottom: 10.0),
      color: Colors.red,
      child: Icon(
        Icons.delete,
        color: Colors.white,
      ),
      alignment: Alignment.centerRight,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 20.0),
            alignment: Alignment.topLeft,
            child: Icon(
              Icons.arrow_back,
              color: AppColors.secondaryColor,
            ),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 3.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/header1.jpg"))),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.home,
                  color: AppColors.secondaryColor,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20.0,
                  ), //this container for 2nd icon round bg color
                  width: 25.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.black,
                  ),
                ),

                Expanded(
                    child:
                        Container()), // it is to move icons right side using expanded container
                Icon(
                  Icons.calendar_today,
                  color: AppColors.secondaryColor,
                ),
                SizedBox(
                  width: 10.0,
                ),

                Text(
                  "2",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: AppColors.secondaryColor,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Flexible(
            child: ListView.builder(
                itemCount: myData
                    .length, //amar data length porjonto widget hote thakbe
                itemBuilder: (context, index) {
                  //data gulo array hisabe ace jonno index nite hoice
                  return Dismissible(
                    // for sliding the item

                    background: leftEditIcon, // for left icon
                    secondaryBackground: rightDeleteIcon, //fot right icon
                    onDismissed: (DismissDirection direction) {
                      // for sliding task
                      print("after dismiss");
                    },
                    confirmDismiss: (DismissDirection direction) async {
                      //async because it is future task
                      if(direction == DismissDirection.startToEnd){ //for when slide from end to start then it will go out
                        showModalBottomSheet( 
                          // for bottom sliding pop up window
                          backgroundColor: Colors.transparent,
                          barrierColor: Colors.transparent, //for pop up bg color 

                          context: context, 
                          builder: (_){
                            return Container(
                              height: 550.0,
                              decoration: BoxDecoration( //for curve background of popup window
                                color: Color(0xFF2e3253).withOpacity(0.4),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ButtonWidget(
                                      backgroundcolor: AppColors.mainColor, 
                                      text: "View", 
                                      textColor: Colors.white),
                                    SizedBox(height: 20.0,),
                                    ButtonWidget(
                                      backgroundcolor: AppColors.mainColor, 
                                      text: "Edit", 
                                      textColor: Colors.white),
                                  ],
                                ),
                              ),
                            );
                          });
                        return false;
                      }else{

                        return Future.delayed(Duration(seconds: 1), ()=> direction == DismissDirection.endToStart);
                        //here use arrow func 
                      }
                    },

                    key: ObjectKey(index), //dismissable required key
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 10.0),
                      child: TaskWidget(
                          text: myData[index], color: Colors.blueGrey),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
