import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miner_web/Core/controller/controller.dart';
import 'package:miner_web/Screens/authentication/component.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller userController = Get.put(controller());

  @override
  void dispose() {
    userController.usernameController.dispose();
    userController.passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Miner Login'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: photo_login_screen(),
            ),
            SizedBox(width: 20),
            Expanded(
              child: form_login(userController: userController),
            ),
          ],
        ),
      ),
    );
  }
}


