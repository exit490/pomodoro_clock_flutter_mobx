import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PomodoroConfigurationTextField extends TextField {
  PomodoroConfigurationTextField({controller})
      : super(
            controller: controller,
            keyboardType: TextInputType.number,
            maxLines: 1,
            textAlign: TextAlign.center,
            inputFormatters: [
              WhitelistingTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(2),
            ]);

  static double width = 50;
  static double height = 50;
}
