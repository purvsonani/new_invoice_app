import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/second_screen_controller.dart';

class SecondScreen extends StatelessWidget {
  final controllers = Get.put(SecondScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => EditPage()));
              },
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
        ],
        backgroundColor: Colors.indigoAccent,
        title: Text(
          'Invoice',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.grey,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 155,
                  ),
                  Text(
                    "Balance Due:",
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Details",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 225,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 225,
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Project",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Status",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Invoice Date",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Due Date",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Terms",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Online Payment",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Project",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Status",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Invoice",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Project",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Status",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Notes",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 25,
                      ))
                ],
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Files",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 25,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
