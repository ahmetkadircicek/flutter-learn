import 'package:flutter/material.dart';

class OtpViewModel extends ChangeNotifier {
  final int length = 6;
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;
  late List<String> _lastValues;

  static const String _zeroWidthJoiner = '\u200D';
  bool _isHandlingBackspace = false;

  OtpViewModel() {
    controllers = List.generate(
        length, (_) => TextEditingController(text: _zeroWidthJoiner));
    focusNodes = List.generate(length, (_) => FocusNode());
    _lastValues = List.filled(length, _zeroWidthJoiner);

    for (int i = 0; i < length; i++) {
      final index = i;

      controllers[i].addListener(() {
        if (_isHandlingBackspace) return;

        final val = controllers[index].text;
        final lastVal = _lastValues[index];

        print('🔁 Listener triggered for index $index');
        print('📍 Last: "$lastVal" | Now: "$val"');

        // Silme tespiti (önceki uzun, şu an kısa)
        if (lastVal.length > val.length &&
            (val.isEmpty || val == _zeroWidthJoiner)) {
          _handleBackspace(index);
          return;
        }

        _lastValues[index] = val;
        _ensureProperText(index);
      });

      focusNodes[i].addListener(() {
        if (focusNodes[index].hasFocus) {
          _ensureProperText(index);
        }
      });
    }
  }

  void _ensureProperText(int index) {
    final controller = controllers[index];
    final currentText = controller.text;

    if (currentText.isEmpty) {
      controller.text = _zeroWidthJoiner;
      controller.selection = TextSelection.fromPosition(
        const TextPosition(offset: 1),
      );
      return;
    }

    if (!currentText.startsWith(_zeroWidthJoiner)) {
      final cleanText = currentText.replaceAll(_zeroWidthJoiner, '');
      final digit = cleanText.isNotEmpty ? cleanText[0] : '';

      controller.text = _zeroWidthJoiner + digit;
      controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length),
      );
      return;
    }

    if (currentText.length > 2) {
      controller.text = _zeroWidthJoiner + currentText.substring(1, 2);
      controller.selection = TextSelection.fromPosition(
        TextPosition(offset: 2),
      );
    }

    if (controller.selection.baseOffset == 0) {
      controller.selection = TextSelection.fromPosition(
        TextPosition(offset: 1),
      );
    }
  }

  void _handleBackspace(int index) {
    _isHandlingBackspace = true;
    print('🛑 Backspace triggered on index: $index');
    print('🔎 Current text at index: "${controllers[index].text}"');

    // Son node için özel davranış
    if (index == length - 1) {
      final currentText = controllers[index].text;

      if (currentText.length > 1) {
        print('✂️ Last node not empty — clearing only itself (index: $index)');
        controllers[index].text = _zeroWidthJoiner;
        _lastValues[index] = _zeroWidthJoiner;

        controllers[index].selection = TextSelection.fromPosition(
          const TextPosition(offset: 1),
        );

        Future.delayed(const Duration(milliseconds: 100), () {
          print('✅ Backspace unlock after clearing last node');
          _isHandlingBackspace = false;
        });
        return;
      } else {
        print(
            '➡️ Last node already empty — will fallback to general backspace logic');
      }
    }

    // Genel backspace davranışı
    if (index > 0) {
      print('↩️ Moving focus to previous node: ${index - 1}');

      controllers[index].text = _zeroWidthJoiner;
      _lastValues[index] = _zeroWidthJoiner;

      focusNodes[index - 1].requestFocus();

      if (controllers[index - 1].text.length > 1) {
        print('🧹 Clearing previous node: ${index - 1}');
        controllers[index - 1].text = _zeroWidthJoiner;
        _lastValues[index - 1] = _zeroWidthJoiner;
      }

      controllers[index - 1].selection = TextSelection.fromPosition(
        TextPosition(offset: controllers[index - 1].text.length),
      );
    } else {
      print('⛔️ Cannot go back further, index is already 0');
    }

    Future.delayed(const Duration(milliseconds: 100), () {
      print('✅ Backspace unlock after general backspace logic');
      _isHandlingBackspace = false;
    });
  }

  void disposeAll() {
    for (var c in controllers) {
      c.dispose();
    }
    for (var f in focusNodes) {
      f.dispose();
    }
  }

  void onChanged(String value, int index, Function(String) onCompleted) {
    if (value.isEmpty || value == _zeroWidthJoiner) return;

    final digit =
        value.startsWith(_zeroWidthJoiner) ? value.substring(1) : value;

    if (digit.isNotEmpty && index < length - 1) {
      focusNodes[index + 1].requestFocus();
    }

    final code = getCode();
    if (code.length == length) {
      onCompleted(code);
      notifyListeners();
    }
  }

  String getCode() {
    String code = '';
    for (var controller in controllers) {
      final text = controller.text;
      if (text.length > 1) {
        code += text.substring(1);
      }
    }
    return code;
  }
}
