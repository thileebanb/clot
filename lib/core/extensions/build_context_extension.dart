import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  void hideKeyboard(PointerDownEvent _) => FocusScope.of(this).unfocus();

  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  Future<T?> push<T extends Object?>(Route<T> route) async {
    return await Navigator.of(this).push(route);
  }

  void pop<T extends Object?>([T? result]) async {
    Navigator.of(this).pop(result);
  }

  bool canPop() => Navigator.of(this).canPop();

  void popUntil(bool Function(Route<dynamic>) predicate) {
    Navigator.of(this).popUntil(predicate);
  }

  Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
    BuildContext context,
    Route<T> newRoute, {
    TO? result,
  }) async {
    return await Navigator.pushReplacement(this, newRoute, result: result);
  }

  Future<T?> pushAndRemoveUntil<T extends Object?>(
    BuildContext context,
    Route<T> newRoute,
    bool Function(Route<dynamic>) predicate,
  ) async {
    return await Navigator.pushAndRemoveUntil(this, newRoute, predicate);
  }
}
