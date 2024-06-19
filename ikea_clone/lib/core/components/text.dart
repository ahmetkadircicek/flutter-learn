import 'package:flutter/material.dart';

class Headline1 extends StatelessWidget {
  const Headline1({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
  });

  final String text;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: fontWeight,
          ),
    );
  }
}

class Headline2 extends StatelessWidget {
  const Headline2({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 20,
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
    this.letterSpacing = 0,
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

class Body2 extends StatelessWidget {
  const Body2({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.color,
    this.letterSpacing = 1,
    this.fontSize = 12,
  });

  final String text;
  final Color? color;
  final FontWeight fontWeight;
  final double letterSpacing;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: fontWeight,
            color: color,
            letterSpacing: letterSpacing,
            fontSize: fontSize,
          ),
    );
  }
}

class Subtitle1 extends StatelessWidget {
  const Subtitle1({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.textAling = TextAlign.left,
    this.color,
  });

  final TextAlign textAling;
  final String text;
  final FontWeight fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: fontWeight,
            letterSpacing: -0.5,
            color: color,
          ),
      textAlign: textAling,
    );
  }
}

class Subtitle2 extends StatelessWidget {
  const Subtitle2({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.textAling = TextAlign.left,
    this.color,
  });

  final TextAlign textAling;
  final String text;
  final FontWeight fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: fontWeight,
            letterSpacing: 0,
            color: color,
            fontSize: 12,
          ),
      textAlign: textAling,
    );
  }
}
