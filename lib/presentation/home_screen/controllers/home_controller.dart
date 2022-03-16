import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  var database = [].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getHttpData();
  }
  
  var params = {
    "op": "get_invoices",
    "page": 3,
    "length": 30,
    "user_id": 2513,
    "company_id": 1
  };

  getHttpData() async {
    try {
      var url =
          "https://api-beta.contractorforeman.net/service.php?op=${params["op"]}&page=${params["page"]}&length=${params["length"]}&user_id=${params["user_id"]}&company_id=${params["company_id"]}";
      var response = await Dio().post(url);
      // log(response.data.toString());
      database.value = response.data["data"];
    } catch (e) {
      print(e);
    }
  }
}
