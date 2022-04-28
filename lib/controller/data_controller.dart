import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:task_manager/services/service.dart'; 

class DataController extends GetxController{
  var service = DataService();
  bool _isLoading = false;
  bool get isLoading=>_isLoading;
  List<dynamic> _myData=[];
  List<dynamic> get myData=> _myData;
  Future<void> getData() async {
    Response response =await service.getData();
    if(response.statusCode==200){
      _myData=response.body;
      print("Got the data");
      update();
    }
    else{
      print("Didnot get the data");
    }
  }

  static DataService() {}
}