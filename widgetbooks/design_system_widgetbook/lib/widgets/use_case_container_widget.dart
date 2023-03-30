import 'package:flutter/material.dart';
import 'package:inspector/inspector.dart';
import 'package:url_launcher/url_launcher.dart';

class UseCaseContainerWidget extends StatefulWidget {
  final Widget child;
  final String? documentationClass;

  const UseCaseContainerWidget({
    super.key,
    required this.child,
    this.documentationClass,
  });

  @override
  State<UseCaseContainerWidget> createState() => _UseCaseContainerWidgetState();
}

class _UseCaseContainerWidgetState extends State<UseCaseContainerWidget> {
  bool isPanelVisible = true;

  void setIsPanelVisible() {
    setState(() => isPanelVisible = !isPanelVisible);
  }

  void goToDocumentation() async {
    const String baseUrl = 'https://guibsonarc.github.io/widgetbook-test';
    Uri uri = Uri.parse(
      '$baseUrl/doc/api/design_system/${widget.documentationClass}-class.html',
    );
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Inspector(
        isEnabled: true,
        isPanelVisible: isPanelVisible,
        alignment: Alignment.topLeft,
        child: Scaffold(body: widget.child),
      ),
      bottomNavigationBar: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            FloatingActionButton.small(
              backgroundColor: Colors.white,
              onPressed: goToDocumentation,
              child: Icon(
                Icons.description_outlined,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(width: 8),
            FloatingActionButton.small(
              backgroundColor: Colors.white,
              onPressed: setIsPanelVisible,
              child: Icon(
                isPanelVisible
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
