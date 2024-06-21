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

  // Search View
  static const searchViewSearch = 'Search';
  static const searchViewWhatAreYouLookingFor = 'What are you looking for?';
  static const searchViewBrowseProducts = 'Browse products';
  static const searchViewViewAll = 'View all';

  // Profile View
  static const profileViewLogOut = 'Log out';
  static const profileViewHi = 'Hi, Ahmet';
  static const profileViewScanItem = 'Scan item';
  static const profileViewScanItemsInStore = 'Scan items in-store';
  static const profileViewScanProducts = 'Scan produts and skip queues at checkout';
  static const profileViewYourIKEA = 'Your IKEA';

  // Product Details View
  static const productDetailsViewProductName = 'SVARTISDAL';
  static const productDetailsViewProductDescription =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus malesuada ligula at lectus...';
  static const productDetailsViewProductPrice = '£70';

  // Loading View
  static const loadingViewCheckingDeliveryAndCollectionOptions = 'Checking your delivery and collection options';

  // Home View
  static const homeViewExploreAndGetInspired = 'Explore and get inspired';
  static const homeViewProductName = 'SVARTISDAL';
  static const homeViewProductDescription = 'Modern and minimalistic white covered light...';
  static const homeViewProductPrice = '£70';

  // Checkout View
  static const checkoutViewCheckout = 'Checkout';
  static const checkoutViewOrderSummary = 'Order Summary';
  static const checkoutViewItem = '1 Item';
  static const checkoutViewSubtotalExclVAT = 'Subtotal excl. VAT';
  static const checkoutViewDeliveryToIP332AHExclVAT = 'Delivery to IP332AH excl. VAT';
  static const checkoutViewTotalCostExclVAT = 'Total cost excl. VAT';
  static const checkoutPrice = '£70';
  static const checkoutViewVAT = 'VAT';
  static const checkoutViewGoToPayment = 'Go to payment';

  // Category View
  static const categoryViewStorageAndOrganization = 'Storage & organization';
  static const categoryViewShowAvailabilities = 'Show availabilities';
  static const categoryViewSelectStoreOrPostalCodeToSeeWhatsInStock =
      'Select store or postal code to see what\'s in stock.';

  // Select Country View
  static const selectCountryViewCountryCountinue = 'Continue';

  // Welcome First View
  static const firstWelcomeViewTitle = 'You can now shop inspiratinal rooms based on your style.';
  static const firstWelcomeViewSkip = 'Skip';

  // Welcome Second View
  static const secondWelcomeViewTitle = 'Quickly save your favourites to shopping lists.';

  // Welcome Third View
  static const thirdWelcomeViewTitle = 'Access your digital IKEA Family card anytime';
  static const thirdWelcomeViewDone = 'Done';
}
