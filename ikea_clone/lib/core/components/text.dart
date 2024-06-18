import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  const Headline({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.color,
    this.letterSpacing = 1,
  });

  final String text;
  final Color? color;
  final FontWeight fontWeight;
  final double letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: fontWeight,
            color: color,
            letterSpacing: letterSpacing,
          ),
    );
  }
}

class Subtitle extends StatelessWidget {
  const Subtitle({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.textAling = TextAlign.left,
  });

  final TextAlign textAling;
  final String text;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: fontWeight,
            letterSpacing: 0.1,
          ),
      textAlign: textAling,
    );
  }
}
