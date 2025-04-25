import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_widget/dummy/viewmodel/otp_viewmodel.dart';

class OtpWidget extends StatefulWidget {
  final void Function(String) onCompleted;
  const OtpWidget({super.key, required this.onCompleted});

  @override
  State<OtpWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<OtpWidget> {
  late final OtpViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = OtpViewModel();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        spacing: 32,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleAndSubtitle(context),
          _buildOtpInput(context),
          _buildResend(context),
          _buildSubmitButton(context),
        ],
      ),
    );
  }

  Widget _buildOtpInput(BuildContext context) {
    return Row(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        _viewModel.length,
        (index) => Expanded(
          child: _buildTextField(index),
        ),
      ),
    );
  }

  Widget _buildTextField(int index) {
    return AspectRatio(
      aspectRatio: 0.8,
      child: TextField(
        controller: _viewModel.controllers[index],
        focusNode: _viewModel.focusNodes[index],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        autofocus: index == 0,
        textInputAction:
            index == 5 ? TextInputAction.done : TextInputAction.next,
        showCursor: false,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
          fillColor: Colors.grey.shade200,
          filled: true,
          counterText: '',
          contentPadding: const EdgeInsets.all(12),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onChanged: (value) =>
            _viewModel.onChanged(value, index, widget.onCompleted),
      ),
    );
  }

  Widget _buildTitleAndSubtitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Verification Code',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade900,
          ),
        ),
        Text(
          'We\'ve sent you a verification code.',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade800,
          ),
        ),
      ],
    );
  }

  Row _buildResend(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        Text('Didn\'t receive the code?'),
        Text(
          'Resend',
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  AnimatedContainer _buildSubmitButton(BuildContext context) {
    return AnimatedContainer(
      width: double.infinity,
      height: 40,
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(32),
      ),
      child: const Center(
        child: Text(
          'Submit',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
