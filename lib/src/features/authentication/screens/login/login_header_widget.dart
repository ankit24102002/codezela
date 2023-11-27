import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/image_striing.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: const AssetImage(tWelcomeScreenImage),
          height: size.height * 0.2,
          alignment: Alignment.center,
        ),
        Text(tLoginTitle,
            style: Theme.of(context).textTheme.headlineLarge),
        Text(tLoginSubTitle,
            style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
