import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miner_web/Screens/home_screen/header_web.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: Get.width,
          height: Get.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              header(),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text('!Welcome to the Home Page'),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 500,
                    height: 500,
                    child: Image.asset(
                      'assets/images/pngwing.com (2).png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




