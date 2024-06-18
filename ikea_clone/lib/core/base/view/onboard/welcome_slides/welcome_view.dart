import 'package:flutter/material.dart';
import 'package:ikea_clone/core/base/view/onboard/welcome_slides/welcome_first_view.dart';
import 'package:ikea_clone/core/base/view/onboard/welcome_slides/welcome_second_view.dart';
import 'package:ikea_clone/core/base/view/onboard/welcome_slides/welcome_third_view.dart';
import 'package:ikea_clone/core/constants/color_constants.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          WelcomeFirstView(),
          WelcomeSecondView(),
          WelcomeThirdView(),
        ],
      ),
      backgroundColor: ColorConstants.wildSand,
    );
  }
}
