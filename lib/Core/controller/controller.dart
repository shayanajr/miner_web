
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class controller extends GetxController{


  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  Rx<bool> passwordVisible = true.obs;

  void submitForm() {
    if (formKey.currentState!.validate()) {
      String username = usernameController.text;
      String password = passwordController.text;

      if (username == 'admin' && password == 'admin') {
        Get.offAllNamed('/home_screen');
      } else {
        showDialog(
          context: Get.overlayContext!,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Login Failed'),
              content: Text('Invalid username or password'),
              actions: <Widget>[
                ElevatedButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );

      }
    }
  }

}


