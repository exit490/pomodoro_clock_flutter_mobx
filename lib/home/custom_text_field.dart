import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumericTextField extends TextField {
  NumericTextField()
      : super(
            keyboardType: TextInputType.number,
            maxLines: 1,
            textAlign: TextAlign.center,
            inputFormatters: [
              WhitelistingTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(2),
            ]);
}
