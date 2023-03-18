import 'package:flutter/material.dart';

import '../enums/text_variant_enum.dart';

mixin TextStyleMixin {
  Color? getTextStyle({required TextVariant variant}) {
    if (variant == TextVariant.blue) {
      return Colors.blue;
    }
    if (variant == TextVariant.red) {
      return Colors.red;
    }
    return null;
  }
}
