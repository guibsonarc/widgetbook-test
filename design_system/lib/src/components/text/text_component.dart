import 'package:flutter/material.dart';
import 'enums/text_variant_enum.dart';
import 'mixins/text_style_mixin.dart';

class TextComponent extends StatelessWidget with TextStyleMixin {
  final String value;
  final TextVariant variant;

  const TextComponent.red({
    required this.value,
    this.variant = TextVariant.red,
    super.key,
  });

  const TextComponent.blue({
    required this.value,
    this.variant = TextVariant.blue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(color: getTextStyle(variant: variant)),
    );
  }
}
