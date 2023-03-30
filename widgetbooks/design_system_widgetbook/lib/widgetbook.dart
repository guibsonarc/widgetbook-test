import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'widgets/use_case_container_widget.dart';

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(name: 'Flutter Design System'),
      categories: [
        WidgetbookCategory(
          name: 'Base Components',
          isExpanded: true,
          widgets: [
            WidgetbookComponent(
              name: 'Text',
              isExpanded: true,
              useCases: [
                WidgetbookUseCase(
                  name: 'Red',
                  builder: (context) => UseCaseContainerWidget(
                    documentationClass: 'TextComponent',
                    child: TextComponent.red(
                      value: context.knobs.text(
                        label: 'Text Label',
                        initialValue: 'Text Value',
                      ),
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Blue',
                  builder: (context) => UseCaseContainerWidget(
                    documentationClass: 'TextComponent',
                    child: TextComponent.blue(
                      value: context.knobs.text(
                        label: 'Text Label',
                        initialValue: 'Text Value',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Switch',
              isExpanded: true,
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => const UseCaseContainerWidget(
                    documentationClass: 'SwitchComponent',
                    child: SwitchComponent(),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'App Bar',
              isExpanded: true,
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => UseCaseContainerWidget(
                    documentationClass: 'AppBarComponent',
                    child: Scaffold(
                      appBar: AppBarComponent(
                        title: context.knobs.text(
                          label: 'title',
                          initialValue: 'Título da AppBar',
                          description:
                              'Texto que será exibido no centro do componente',
                        ),
                        centerTitle: context.knobs.nullableBoolean(
                          label: 'centerTitle',
                          description: 'Define o posicionamento do título',
                          initialValue: true,
                        ),
                        leading: context.knobs.options(
                          label: 'leading',
                          description:
                              'Ícone exibido na esquerda do componente',
                          options: <Option<IconData>>[
                            const Option(
                              label: 'arrow_back_ios',
                              value: Icons.arrow_back_ios,
                            ),
                            const Option(
                              label: 'menu',
                              value: Icons.menu,
                            ),
                            const Option(
                              label: 'add',
                              value: Icons.add,
                            ),
                          ],
                        ),
                        leadingOnPress: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
      themes: [
        WidgetbookTheme(name: 'Light', data: ThemeData.light()),
        WidgetbookTheme(name: 'Dark', data: ThemeData.dark()),
      ],
      devices: [
        Apple.iPhoneSE2020,
        Apple.iPhone13ProMax,
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
        WidgetbookFrame.defaultFrame(),
        WidgetbookFrame.deviceFrame(),
      ],
    );
  }
}
