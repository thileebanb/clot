import 'package:flutter/material.dart';

abstract class AppImages {
  static final String _assetPath = 'assets/images/';

  static Image _imgAsset(String fileName) =>
      Image.asset('$_assetPath$fileName');

  static Image get clot => _imgAsset('clot.png');
}
