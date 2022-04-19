import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
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
        ],
      ),
    );
  }
}