import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(name: 'Flutter Design System'),
      categories: [
        WidgetbookCategory(
          name: 'Base Components',
          folders: [
            WidgetbookFolder(
              name: 'Components',
              widgets: [
                WidgetbookComponent(
                  name: 'Text',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Red',
                      builder: (context) {
                        return TextComponent.red(
                          value: context.knobs.text(
                            label: 'Text Label',
                            initialValue: 'Text Value',
                          ),
                        );
                      },
                    ),
                    WidgetbookUseCase(
                      name: 'Blue',
                      builder: (context) {
                        return TextComponent.blue(
                          value: context.knobs.text(
                            label: 'Text Label',
                            initialValue: 'Text Value',
                          ),
                        );
                      },
                    )
                  ],
                ),
                WidgetbookComponent(
                  name: 'Switch',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) {
                        return const SwitchComponent();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
      themes: [
        WidgetbookTheme(name: 'Light', data: ThemeData.light()),
        WidgetbookTheme(name: 'Dark', data: ThemeData.dark()),
      ],
      devices: [
        Apple.iPhone13ProMax,
        Apple.iPhoneSE2020,
        Samsung.s21ultra,
        Device(
          name: 'Custom Device',
          resolution: Resolution.dimensions(
            nativeWidth: 1080,
            nativeHeight: 1920,
            scaleFactor: 2,
          ),
          type: DeviceType.mobile,
        )
      ],
      frames: [
        WidgetbookFrame.deviceFrame(),
        WidgetbookFrame.defaultFrame(),
      ],
    );
  }
}
