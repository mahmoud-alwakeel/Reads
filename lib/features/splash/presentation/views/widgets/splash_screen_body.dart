import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reads/features/splash/presentation/views/widgets/sliding_text.dart';

// converted to stateful widget as we are going to use animation
class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

//a Mixin to handle rate of changes values and it's single as we are using one animation controller only
class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    // * single responsibility principle * : each method is responsible for doing some code
    initSlidingAnimation();
    navigateToHome();

  }

  // to provide memory leak as (controller) is a type of resources will stay opened
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // to take the width of the screen
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Reads',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 14,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    // animationController provides values from 0 to 1
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    // to provide values more than from 0 to 1 for example from 0 to 60 ,
    // amd we used .animate as the Tween is of type Offset and animation is of type Animation
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
    // commented it as we used animatedBuilder down which is better for performance as it only updates a specific widget not the whole UI
    /* slidingAnimation.addListener(() {
      // when we make setState we update all the Ui except the const Widgets
      setState(() {

      });
    }); */
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), (){
      GoRouter.of(context).push('/homeScreen');
    });
  }

}
// (Was using get before for routing)
// get makes navigation process easier (offcourse that's not the only use for it or even the main use)
//Get.to(const HomeScreen(), transition: Transition.fadeIn, duration: kTransitionDuration);


