import 'package:flutter/material.dart';

extension UiHelper on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showTextSnackBar(
    String text,
  ) =>
      ScaffoldMessenger.of(this).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(text),
      ));
}
