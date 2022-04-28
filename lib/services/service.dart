import 'package:get/get.dart';

class DataService extends GetConnect implements GetxService{
  getData(){
    Future<Response> getData()async{
      Response response=await get(
        "http://localhost:3002/gettasks",
        headers: {
          'Content-Type':'application/json; charset=UTF-8'
        }
      );

      return response;
    }
  }
}