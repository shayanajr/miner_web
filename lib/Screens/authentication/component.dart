import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miner_web/Core/controller/controller.dart';

class photo_login_screen extends StatelessWidget {
  const photo_login_screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(90.0),
      child: Image.asset(
        'assets/images/miner_btc.png',
        fit: BoxFit.cover,
      ),
    );
  }
}




class form_login extends StatelessWidget {
  const form_login({
    super.key,
    required this.userController,
  });

  final controller userController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: userController.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome!',
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 60,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Login in to Your Account',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            child: TextFormField(
              controller: userController.usernameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Username',
                hintText: 'Your Username',
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            child: Obx(() {
              return TextFormField(
                controller: userController.passwordController,
                obscureText: userController.passwordVisible.value,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      icon: Icon(
                        userController.passwordVisible.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        userController.passwordVisible.value =
                        !userController.passwordVisible.value;
                      },
                    ),
                  ),
                  labelText: 'Password',
                  hintText: 'Your Password',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              );
            }),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 10),
            child: SizedBox(
              width: Get.width * .5,
              height: Get.height * 0.05,
              child: ElevatedButton(
                onPressed: userController.submitForm,
                child: Text('Login'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 10),
            child: Text('Forgot Password!'),
          ),
        ],
      ),
    );
  }
}