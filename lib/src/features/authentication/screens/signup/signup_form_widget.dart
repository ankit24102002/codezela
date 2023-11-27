import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/controllers/signup_controller.dart';
import 'package:login_flutter_app/src/features/authentication/screens/forgot_password/forgot_password_otp/otp_screen.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(SignUpController());
final _formKey =GlobalKey<FormState>();


    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: _formKey,
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: controller.fullName,
            decoration: const InputDecoration(
              label: Text(tFullName),
              prefix: Icon(Icons.person_outline_rounded),
            ),
          ),
          const SizedBox(height: tFormHeight - 20),
          TextFormField(
            controller: controller.email,
            decoration: const InputDecoration(
              label: Text(tEmail),
              prefix: Icon(Icons.person_outline_rounded),
            ),
          ),
          const SizedBox(height: tFormHeight - 20),
          TextFormField(
            controller: controller.phoneNo,
            decoration: const InputDecoration(
              label: Text(tPhoneNo),
              prefix: Icon(Icons.person_outline_rounded),
            ),
          ),
          const SizedBox(height: tFormHeight - 20),
          TextFormField(
            controller: controller.password,
            decoration: const InputDecoration(
              label: Text(tPassword),
              prefix: Icon(Icons.person_outline_rounded),
            ),
          ),
          const SizedBox(height: tFormHeight - 20),
          SizedBox(
            width: double.infinity,
              child: ElevatedButton(
            onPressed: () {
              
               
              // if(_formKey.currentState!.validate()){
               SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());             
              //  SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim())  ;              }
              // Get.to(()=>const OTPScreen());
            },
            child: Text(tSignup.toUpperCase()),
          ))
        ],
      )),
    );
  }
}
