import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/colors/app_colors.dart';
import 'package:task_manager/widgets/textfield_widget.dart';

class AddTask extends StatelessWidget {
  const AddTask({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController(); // to control the text fields
    TextEditingController detailController = TextEditingController();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/addtask1.jpg"
            )
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           //to position arrow back to start in cross axis
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column( //this column is for the arrow
              children: [
                SizedBox(height: 60.0,),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,
                color: AppColors.secondaryColor,))
              ],
            ),
            Column( // this is for 2 text field and 1 button
              children: [
                TextFieldWidget( //to get text field from widget folder
                  textController: nameController, 
                  hintText: "Task Name", 
                  borderRadius: 30.0),
                SizedBox(height: 20.0,),
                  TextFieldWidget(
                                        //to get text field from widget folder
                    textController: nameController,
                    hintText: "Task Details",
                    borderRadius: 10.0, 
                    maxLines: 3,),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/6,
            )
          ],
        ),
      ),
    );
  }
}