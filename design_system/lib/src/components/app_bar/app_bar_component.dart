import 'package:flutter/material.dart';

/// Componente criado para utilizar na barra superior do aplicativo
class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  /// Título da App Bar
  final String title;

  /// Define o posicionamento do título
  final bool? centerTitle;

  /// Ícone para a App Bar
  final IconData leading;

  /// Ação executada ao clicar no ícone da App Bar
  final VoidCallback? leadingOnPress;

  const AppBarComponent({
    super.key,
    required this.title,
    this.centerTitle = true,
    required this.leading,
    this.leadingOnPress,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: centerTitle,
      leading: InkWell(
        onTap: leadingOnPress,
        child: Icon(leading),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
