import 'package:flutter/material.dart';
import 'package:ikea_clone/core/base/view/onboard/welcome_slides/welcome_first_view.dart';
import 'package:ikea_clone/core/components/text.dart';
import 'package:ikea_clone/core/constants/color_constants.dart';

class WelcomeSecondView extends StatelessWidget {
  const WelcomeSecondView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            Image.asset(
              "assets/images/image_welcome_second.png",
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.fill,
            ),
            const CurrentPageIndicator(currentIndex: 2),
            const Subtitle1(
              text: 'Quickly save your favourites to shopping lists.',
              textAling: TextAlign.center,
            ),
            const SizedBox(height: 5),
            const Subtitle1(
              text: 'Skip',
              textAling: TextAlign.center,
              fontWeight: FontWeight.bold,
            ),
            const Spacer(),
          ],
        ),
      ),
      backgroundColor: ColorConstants.wildSand,
    );
  }
}
