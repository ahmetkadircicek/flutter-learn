import 'package:flutter/material.dart';
import 'package:otp_widget/dummy/widget/otp_widget.dart';

class DummyView extends StatelessWidget {
  const DummyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: OtpWidget(
            onCompleted: (String code) {
              debugPrint(code);
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Problem occurred here!');
        },
        tooltip: 'Log an issue',
        backgroundColor: Colors.redAccent.shade700,
        child: const Icon(Icons.bug_report, color: Colors.white),
      ),
    );
  }
}
