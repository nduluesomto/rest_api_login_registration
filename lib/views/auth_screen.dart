import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_login_registration/controllers/login_controller.dart';

import '../controllers/register_controller.dart';
import '../widgets/login_widget.dart';
import '../widgets/register_widget.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
    RegistrationController registerController =
        Get.put(RegistrationController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 60),
        child: Center(
          child: Obx(() => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  !loginController.isLogin.value
                      ? const Text('REGISTRATION',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold))
                      : const Text('LOGIN',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                  const SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                          onPressed: () {
                            loginController.isLogin.value = false;
                          },
                          color: !loginController.isLogin.value
                              ? Colors.white
                              : Colors.amber,
                          child: const Text('Register')),
                      MaterialButton(
                          onPressed: () {
                            loginController.isLogin.value = true;
                          },
                          color: loginController.isLogin.value
                              ? Colors.white
                              : Colors.amber,
                          child: const Text('Login'))
                    ],
                  ),
                  const SizedBox(height: 80),
                  loginController.isLogin.value
                      ? const LoginWidget()
                      : const RegisterWidget()
                ],
              )),
        ),
      ),
    );
  }
}
