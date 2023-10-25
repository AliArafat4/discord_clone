import 'package:flutter/material.dart';

extension SizeExtention on BuildContext {
  getWidthSize() {
    return MediaQuery.of(this).size.width;
  }

  getHeightSize() {
    return MediaQuery.of(this).size.height;
  }
}
