import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:invoices_app/presentation/second_screen/second_screen.dart';

import 'controllers/home_controller.dart';

final controllers = Get.put(HomeController());

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Invoices",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
        ),
        body: SizedBox(
          child: ListView.builder(
              itemCount: controllers.database.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(() => SecondScreen());
                  },
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(controllers.database[index]
                                  ["authorized_by_name"]),
                              Text(
                                  "Inv ${controllers.database[index]["invoice_id"]}"),
                              Text(controllers.database[index]["project_name"])
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(controllers.database[index]
                                  ["payment_amount"]),
                              Text(controllers.database[index]
                                  ["approval_type_name"])
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}

//  Text(controllers.database[index]["authorized_by_name"]),
//  Text(controllers.database[index]["project_name"])
