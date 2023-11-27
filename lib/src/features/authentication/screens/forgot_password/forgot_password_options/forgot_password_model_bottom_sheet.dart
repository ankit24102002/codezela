import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/screens/forgot_password/forgot_password_mail/forgot_pasword_mail.dart';
import 'package:login_flutter_app/src/features/authentication/screens/forgot_password/forgot_password_options/forgot_password_btn_widget.dart';

class ForgotPasswordScreen {
  static Future<dynamic> buildShowModelBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tForgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            Text(tForgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyMedium),
           const SizedBox(height: 30.0),
            ForgotPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: tEmail,
              subTitle: tResetViaEmail,
              onTap: () {
                Navigator.pop(context);
                Get.to(const ForgotPasswordMailScreen());
              },
            ),
            const SizedBox(height: 20.0),
            ForgotPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_outlined,
              title: tPhoneNo,
              subTitle: tResetViaPhone,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
