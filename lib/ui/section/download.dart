import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'download.g.dart';

@swidget
Widget _sectionDownloaded(BuildContext context) => const Wrap(
      runSpacing: 24,
      spacing: 64,
      alignment: WrapAlignment.center,
      children: [
        _Item(
          text: '450,000+',
          caption: 'total downloaded',
        ),
        _Item(
          text: '20,000+',
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
              .headlineMedium
              ?.copyWith(color: Colors.orange),
        ),
        Text(caption),
      ],
    );
