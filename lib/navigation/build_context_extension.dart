import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Future<void> push(MaterialPageRoute route) {
    return Navigator.of(this).push(route);
  }

  void pop() {
    if (Navigator.of(this).canPop()) return Navigator.of(this).pop();
    return;
  }
}
