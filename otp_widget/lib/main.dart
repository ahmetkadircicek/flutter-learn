import 'package:flutter/material.dart';
import 'package:otp_widget/dummy/view/dummy_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OTP Widget',
      theme: ThemeData.light(),
      home: DummyView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
