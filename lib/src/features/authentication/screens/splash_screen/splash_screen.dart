import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animatioon_model.dart';
import 'package:login_flutter_app/src/constants/color.dart';
import 'package:login_flutter_app/src/constants/image_striing.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_flutter_app/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
 const  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    // Observe the animation completion state
   

    // Listen for changes in the animationCompleted state
    ever(controller.animate, (bool animationState) {
       if (!animationState) {
         // Navigate to WelcomeScreen when animation is no longer active
        Get.off(WelcomeScreen());
       }
     });
    
    controller.startSplashAnimation();
    return Scaffold(
        body: Stack(
      children: [
        TFadeInAnimation(
          durationInMs: 1600,
          animate: TAnimatePosition(
            topAfter: 0,
            topBefore: -30,
            leftBefore: -30,
            leftAfter: 0,
          ),
          child: const Image(image: AssetImage(tSplashTopIcon)),
        ),
        TFadeInAnimation(
          durationInMs: 2000,
          animate: TAnimatePosition(
            topAfter: 80,
            topBefore: 80,
            leftBefore: -80,
            leftAfter: tDefaultSize,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tAppName,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                tAppTagLine,
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ],
          ),
        ),
        TFadeInAnimation(
          durationInMs: 2400,
          animate: TAnimatePosition(
            bottomBefore: 0,
            bottonAfter: 100,
          ),
          child: const Image(
            image: AssetImage(tSplashImage),
          ),
        ),
        TFadeInAnimation(
          durationInMs: 2400,
          animate: TAnimatePosition(
              bottomBefore: 0,
              bottonAfter: 60,
              rightBefore: tDefaultSize,
              rightAfter: tDefaultSize),
          child: Container(
            width: tSplashContainerSize,
            height: tSplashContainerSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: tPrimaryColor,
            ),
          ),
        ),
      ],
    ));
    
  }
}
