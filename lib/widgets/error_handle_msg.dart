import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/colors/app_colors.dart';
class Message{
    static void taskErrorWarning(String taskName, String taskErrorWarning){
      Get.snackbar(taskName, taskErrorWarning,
      backgroundColor: AppColors.mainColor,
      titleText: Text(
        taskName,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),

      messageText: Text(
          taskErrorWarning,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        )
      );
    }
}