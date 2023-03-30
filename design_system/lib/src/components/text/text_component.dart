import 'package:flutter/material.dart';
import 'enums/text_variant_enum.dart';
import 'mixins/text_style_mixin.dart';

/// Componente criado para utilizar ao exibir textos em tela
class TextComponent extends StatelessWidget with TextStyleMixin {
  /// Valor exibido no texto
  final String value;

  /// Tipo de variação do texto
  final TextVariant variant;

  /// Construtor com definição padrão da variação [red]
  const TextComponent.red({
    required this.value,
    this.variant = TextVariant.red,
    super.key,
  });

  /// Construtor com definição padrão da variação [blue]
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
