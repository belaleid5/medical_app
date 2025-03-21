import 'dart:math';

import 'package:flutter/material.dart';
import 'package:medical_app/core/responsive_size_provider/size_privder.dart';

extension SizeProviderExtension on BuildContext {
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;

  double get screenWidth =>
      isLandscape
          ? MediaQuery.of(this).size.height
          : MediaQuery.of(this).size.width;
  double get screenHeight =>
      isLandscape
          ? MediaQuery.of(this).size.width
          : MediaQuery.of(this).size.height;

  SizeProvider get sizeProvider => SizeProvider.of(this);

  double get scaleWidth => sizeProvider.width / sizeProvider.baseSize.width;
  double get scaleHeight => sizeProvider.height / sizeProvider.baseSize.height;

  double setWidth(num w) {
    return w * scaleWidth;
  }

  double setHeight(num h) {
    return h * scaleHeight;
  }

  double setSp(num fontSize) {
    return fontSize * scaleWidth;
  }

  double setMinSize(num size) {
    return size * min(scaleWidth, scaleHeight);
  }
}
