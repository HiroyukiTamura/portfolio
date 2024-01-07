import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/model/btn_link.dart';
import 'package:portfolio/resource/dimens.dart';
import 'package:portfolio/ui/widget/skill_chip.dart';
import 'package:portfolio/ui/widget/text.dart';
import 'package:portfolio/util.dart';

part 'oss.g.dart';

@swidget
Widget _sectionOss({
  required bool singlePain,
}) =>
    singlePain
        ? const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _BlockFlutterHlsParser(),
              SizedBox(height: 64),
              _BlockDoubleTapPlayerView(),
            ],
          )
        : Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: Dimens.MaxWidthWorks,
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: _BlockFlutterHlsParser(),
                  ),
                  SizedBox(width: 64),
                  Expanded(
                    child: _BlockDoubleTapPlayerView(),
                  ),
                ],
              ),
            ),
          );

@swidget
Widget __blockFlutterHlsParser(BuildContext context) => _BlockFlutterOss(
      title: 'Flutter Hls Parser',
      caption: AppLocalizations.of(context)!.flutterHlsParserCaption,
      links: const [
        BtnLink(
          url: 'https://pub.dev/packages/flutter_hls_parser',
          value: 'pub.dev',
        ),
        BtnLink(
          url: 'https://github.com/HiroyukiTamura/flutter_hls_parser',
          value: 'Github',
        ),
      ],
      pubPoints: '130/140',
      likes: 20,
      popularity: 86,
      skillChips: const [SkillChipDart()],
    );

@swidget
Widget __blockDoubleTapPlayerView(BuildContext context) => _BlockFlutterOss(
      title: 'Double Tap Player View',
      caption: AppLocalizations.of(context)!.doubleTapPlayerViewCaption,
      links: const [
        BtnLink(
          url: 'https://pub.dev/packages/double_tap_player_view',
          value: 'pub.dev',
        ),
        BtnLink(
          url: 'https://github.com/HiroyukiTamura/double_tap_player_view',
          value: 'Github',
        ),
      ],
      pubPoints: '120/140',
      likes: 33,
      popularity: 74,
      skillChips: const [SkillChipFlutter()],
    );

@swidget
Widget __blockFlutterOss(
  BuildContext context, {
  required String title,
  required String caption,
  required int likes,
  required String pubPoints,
  required int popularity,
  required List<BtnLink> links,
  required List<Widget> skillChips,
}) =>
    Column(
      children: [
        Text(
          title,
          style:
              GoogleFonts.notoSansJavaneseTextTheme(Theme.of(context).textTheme)
                  .headlineSmall,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: links
              .map((it) => TextButton(
                    onPressed: () async => Util.launch(it.url),
                    child: Text(it.value),
                  ))
              .toList(),
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BodyText1(text: caption),
            const SizedBox(height: 8),
            const HeadLine6(text: 'scores'),
            const SizedBox(height: 8),
            BodyPadded(text: 'likes: $likes'),
            BodyPadded(text: 'pub points: $pubPoints'),
            BodyPadded(text: 'popularity: $popularity%'),
            const SizedBox(height: 16),
            const HeadLine6(text: 'tech stack'),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: skillChips,
            ),
          ],
        ),
      ],
    );
