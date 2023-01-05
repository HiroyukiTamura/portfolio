import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'section_download.g.dart';

@swidget
Widget _sectionDownloaded(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        _Item(
          text: '4M+',
          caption: 'total downloaded',
        ),
        SizedBox(width: 64),
        _Item(
          text: '14k+',
          caption: 'active user/month',
        ),
      ],
    );

@swidget
Widget __item(
  BuildContext context, {
  required String text,
  required String caption,
}) =>
    Column(
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: Colors.orange),
        ),
        Text(caption),
      ],
    );