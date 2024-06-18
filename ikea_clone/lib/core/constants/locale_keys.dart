import 'package:flutter/material.dart';

@immutable
final class LocaleKeys {
  const LocaleKeys._();

  // Select Country View
  static const countrySelecHeadline = 'Hej!';
  static const countrySelectSubtitle =
      'We set your region and language from your device. This is so we can show you what\'s available near you.';
  static const countrySelectRegion = 'Region';
  static const countrySelectLanguage = 'Language';
  static const countrySelectEnglish = 'English';

  // Enable Tracking View
  static const enableTrackingHeadline = 'Help us make the app even better';
  static const enableTrackingSubtitle =
      'Sharing data about how the app is used will help the IKEA app team analyse and evaluate the performance of the app.';
  static const enableTrackingLearnMore = 'Learn more';
  static const enableTrackingOk = 'OK';
  static const enableTrackingNotNow = 'Not now';
}
