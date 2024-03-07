


import 'package:bookly/Features/home/presentaion/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/widgets/logo_sliding_animation.dart';
import 'package:bookly/Features/splash/presentation/views/widgets/text_sliding_animation.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController textAnimationController;
  late Animation<Offset> textSlidingAnimation;
  late AnimationController logoAnimationController;
  late Animation<Offset> logoSlidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingText();
    initSlidingLogo();
    goToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    textAnimationController.dispose();
    logoAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
       
        LogoSlidingAnimation(logoSlidingAnimation: logoSlidingAnimation),
        const SizedBox(
          height: 4,
        ),
        
        TextSlidingAnimation(textSlidingAnimation: textSlidingAnimation),
      ],
    );
  }

  void initSlidingText() {
    textAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1, milliseconds: 400),
    );
    textSlidingAnimation =
        Tween<Offset>(begin: const Offset(-3, -3), end: Offset.zero)
            .animate(textAnimationController);
    textAnimationController.forward();
  }

  void initSlidingLogo() {
    logoAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
      ),
    );
    logoSlidingAnimation =
        Tween<Offset>(begin: const Offset(0, 8), end: Offset.zero)
            .animate(logoAnimationController);

    logoAnimationController.forward();
  }

  void goToHomeView() {
    Future.delayed(kDuration, () {
      Get.to(const HomeView(), transition: Transition.zoom);
    });
  }
}
