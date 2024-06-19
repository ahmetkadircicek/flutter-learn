import 'package:flutter/material.dart';
import 'package:ikea_clone/core/base/view/checkout_view.dart';
import 'package:ikea_clone/core/base/view/main_page_view.dart';
import 'package:ikea_clone/core/base/view/product_details_view.dart';
import 'package:ikea_clone/product/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeMode.system == ThemeMode.light ? AppTheme.lightTheme : AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const MainPageView(),
    );
  }
}
