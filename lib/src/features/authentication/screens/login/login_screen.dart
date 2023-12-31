import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/image_striing.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/screens/login/login_footer_widget.dart';
import 'package:login_flutter_app/src/features/authentication/screens/login/login_form_widget.dart';
// import 'package:login_flutter_app/src/features/authentication/screens/login/login_header_widget.dart';
import '../../../../common_widgets/form/form_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child:const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  image: tWelcomeScreenImage2,
                  title: tLoginTitle,
                  subTitle: tLoginSubTitle,
                ),
                 LoginFormWidget(),
                 LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

