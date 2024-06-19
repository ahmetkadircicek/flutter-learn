// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ikea_clone/core/components/text.dart';

class ConsentCheckbox extends StatefulWidget {
  final bool type;

  const ConsentCheckbox({super.key, required this.type});

  @override
  // ignore: library_private_types_in_public_api
  _ConsentCheckboxState createState() => _ConsentCheckboxState();
}

class _ConsentCheckboxState extends State<ConsentCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          shape: const CircleBorder(),
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() => _isChecked = value!);
          },
          side: BorderSide(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
          ),
          activeColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
        ),
        Expanded(
          child: Body2(
            text: widget.type == false
                ? 'I have read and understood the Terms and Conditions.'
                : 'I have read and understood the Privacy policy.',
            letterSpacing: 0,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
