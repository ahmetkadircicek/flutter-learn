import 'package:flutter/material.dart';
import 'package:ikea_clone/core/components/text.dart';
import 'package:ikea_clone/core/constants/color_constants.dart';
import 'package:ikea_clone/core/constants/locale_keys.dart';

class WelcomeFirstView extends StatelessWidget {
  const WelcomeFirstView({super.key});

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
              "assets/images/image_welcome_first.png",
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.fill,
            ),
            const CurrentPageIndicator(
              currentIndex: 1,
            ),
            const SizedBox(
              height: 30,
              child: Subtitle1(
                text: LocaleKeys.firstWelcomeViewTitle,
                textAling: TextAlign.center,
              ),
            ),
            const SizedBox(height: 5),
            const Subtitle1(
              text: LocaleKeys.firstWelcomeViewSkip,
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

class CurrentPageIndicator extends StatelessWidget {
  const CurrentPageIndicator({
    super.key,
    required this.currentIndex,
  });
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 20,
            height: 2,
            color: currentIndex == 1
                ? Theme.of(context).colorScheme.onSurface
                : Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
          ),
          const SizedBox(
            width: 10,
            height: 2,
          ),
          Container(
            width: 20,
            height: 2,
            color: currentIndex == 2
                ? Theme.of(context).colorScheme.onSurface
                : Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
          ),
          const SizedBox(
            width: 10,
            height: 2,
          ),
          Container(
            width: 20,
            height: 2,
            color: currentIndex == 3
                ? Theme.of(context).colorScheme.onSurface
                : Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
          ),
        ],
      ),
    );
  }
}
