import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_login_registration/widgets/submit_button.dart';

import '../controllers/register_controller.dart';
import 'input_text_field.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegistrationController registerController = Get.find();
    return Column(
      children: [
        InputTextFieldWidget(
            textEditingController: registerController.nameController,
            hintText: 'Name'),
        const SizedBox(height: 20),
        InputTextFieldWidget(
            textEditingController: registerController.emailController,
            hintText: 'Email'),
        const SizedBox(height: 20),
        InputTextFieldWidget(
            textEditingController: registerController.passwordController,
            hintText: "Password"),
        const SizedBox(height: 20),
        SubmitButton(
          onPressed: () {
            registerController.registerWithEmail();
          },
          title: 'Register',
        )
      ],
    );
  }
}
