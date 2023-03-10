import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/ui/section/work.dart';
import 'package:portfolio/ui/widget/skill_chip.dart';

part 'itsumuso.g.dart';

@swidget
Widget _sectionItsumuso(BuildContext context, {
  required bool singlePain,
}) =>
    SectionWork(
      singlePain: singlePain,
      title: 'itsumuso',
      caption: AppLocalizations.of(context)!.itsumusoCaption,
      totalDlNumber: '10+',
      monthlyUserNumber: '0+',
      techChips: const [
        SkillChipFlutter(),
        SkillChipDart(),
        SkillChipFirebase(),
      ],
      image: Assets.images.itsumusoCover.image(),
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.cks.yotsugi',
      appStoreUrl: 'https://apps.apple.com/au/app/itsumuso/id1531367636',
    );
