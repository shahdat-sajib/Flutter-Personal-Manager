import 'package:flutter/material.dart';
import 'package:task_manager/controller/data_controller.dart';
import 'package:task_manager/screens/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  loadData() async {
    await Get.find<DataController>().getData();

  }

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DataController());
    loadData();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // to hide debug banner
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

 