import 'package:flutter/material.dart';
import 'package:ikea_clone/core/base/view/onboard/select_country_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BlackTint(
            child: AssetBackgroundImage(
              path: "assets/images/image_splash.jpg",
            ),
          ),
          Center(
            child: Image.asset(
              "assets/images/icon_ikea.png",
              width: 200,
              height: 200,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
