import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class AppImages {
  static final String _assetPath = 'lib/assets/images/';

  static SvgPicture _svgAsset(String fileName) =>
      SvgPicture.asset('$_assetPath$fileName');

  static Image _imgAsset(String fileName) =>
      Image.asset('$_assetPath$fileName');

  // Svg Images
  // static SvgPicture get clot => _svgAsset('clot.svg');

  // Png
  static Image get clot => _imgAsset('clot.png');
}
