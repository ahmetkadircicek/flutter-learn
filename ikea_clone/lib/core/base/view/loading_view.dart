import 'package:flutter/material.dart';
import 'package:ikea_clone/core/components/text.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: const Headline2(
                  text: 'Checking your delivery and collection options',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Center(
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  strokeAlign: -8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
