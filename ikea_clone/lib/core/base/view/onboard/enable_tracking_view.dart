import 'package:flutter/material.dart';
import '../../../components/text.dart';
import '../../../constants/locale_keys.dart';

class EnableTrackingView extends StatelessWidget {
  const EnableTrackingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/image_enable_tracking.png",
                    height: MediaQuery.of(context).size.height * 0.24,
                    width: MediaQuery.of(context).size.width,
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: const Headline1(
                      text: LocaleKeys.enableTrackingHeadline,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Body(text: LocaleKeys.enableTrackingSubtitle),
                  ),
                ],
              ),
              const Spacer(),
              const Text(
                LocaleKeys.enableTrackingLearnMore,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const Spacer(),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 65,
                    width: double.infinity,
                    child: GeneralButton(
                      text: LocaleKeys.enableTrackingOk,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 65,
                    width: double.infinity,
                    child: SecondaryButton(
                      text: LocaleKeys.enableTrackingNotNow,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      child: Body(
        text: text,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.surface,
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.surface,
        shape: StadiumBorder(
          side: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
      child: Body(
        text: text,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
