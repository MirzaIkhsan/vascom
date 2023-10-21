import 'package:flutter/material.dart';

extension WidgetUtils on List<Widget> {
  List<Widget> addHorizontalSpace(double value) {
    if (length <= 1) return this;
    return sublist(1).fold([first], (r, element) {
      return [
        ...r,
        SizedBox(width: value),
        element,
      ];
    });
  }
}
