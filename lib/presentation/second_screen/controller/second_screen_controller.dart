import 'dart:developer';

import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

class SecondScreenController extends GetxController {
  var database = [].obs;

  final dio.Dio _dio = dio.Dio();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getHttpData();
  }


  getHttpData() async {
    final url = "https://api-beta.contractorforeman.net/service.php";
    Map<String, dynamic>? queryParameters = {
      "op": "get_invoice_detail",
      "invoice_id": "6389",
      "from": "android",
      "user_id": "2513",
      "company_id": "1",
      "need_section":"1",
      "version":"22.03.16"
    };
    try {
      final response = await post(url: url, queryParameters: queryParameters);
      log(response.data["data"]);

      return response.data;

    } catch (e) {
      print(e.toString());
    }

    // try {
    //   var url =
    //       "https://api-beta.contractorforeman.net/service.php?op=${params["op"]}&invoice_id=${params["invoice_id"]}&from=${params["from"]}&user_id=${params["user_id"]}&company_id=${params["company_id"]}";
    //   var response = await dio.Dio().post(url);
    //   // log(response.data.toString());
    //   database.value = response.data["data"];
    //   print(response.data["data"]);
    // } catch (e) {
    //   print(e);
    // }
  }

  Future<dio.Response> post({
    required String url,
    Map<String, dynamic>? queryParameters,
  }) async {
    var result = await _dio.post(
      url,
      queryParameters: queryParameters,
    );
    return result;
  }
}
