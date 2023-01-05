import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/util.dart';

part 'header.g.dart';

@swidget
Widget _sectionHeader(BuildContext context) => ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 64),
      child: Align(
        alignment: Alignment.centerRight,
        child: Row(
          children: [
            _IconBtn(
              icon: Icons.facebook,
              iconSize: 24,
              onPressed: () async =>
                  Util.launch('https://www.facebook.com/freqmodu874/'),
            ),
            _WidgetBtn(
              onPressed: () async => Util.launch('https://github.com/HiroyukiTamura/portfolio'),
              child: Assets.images.github.svg(
                color: Colors.white,
                height: 20,
                width: 20,
              ),
            ),
            _WidgetBtn(
              onPressed: () async => Util.launch(Util.URL_QIITA),
              child: Assets.images.qiita.image(
                color: Colors.white,
                height: 20,
                width: 20,
              ),
            ),
            const Expanded(child: SizedBox.shrink()),
            Text('hiroyuktamura@gmail.com',
                style: Theme.of(context).textTheme.bodyText2),
          ],
        ),
      ),
    );

@swidget
Widget __iconBtn(
  BuildContext context, {
  required IconData icon,
  required double iconSize,
  required void Function() onPressed,
}) =>
    IconButton(
      iconSize: iconSize,
      color: Colors.white,
      splashRadius: 24,
      onPressed: onPressed,
      icon: Icon(icon),
    );

@swidget
Widget __widgetBtn(
  BuildContext context, {
  required Widget child,
  required void Function() onPressed,
}) =>
    IconButton(
      iconSize: 20,
      color: Colors.white,
      splashRadius: 24,
      onPressed: onPressed,
      icon: child,
    );
