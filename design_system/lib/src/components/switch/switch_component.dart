import 'package:flutter/material.dart';

class SwitchComponent extends StatefulWidget {
  const SwitchComponent({super.key});

  @override
  State<SwitchComponent> createState() => _SwitchComponentState();
}

class _SwitchComponentState extends State<SwitchComponent> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: switchValue,
      onChanged: (value) {
        setState(() => switchValue = value);
      },
    );
  }
}
