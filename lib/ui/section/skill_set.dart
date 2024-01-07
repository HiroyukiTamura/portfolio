import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/resource/dimens.dart';
import 'package:portfolio/ui/widget/skill_chip.dart';
import 'package:portfolio/ui/widget/text.dart';

part 'skill_set.g.dart';

@swidget
Widget _sectionSkillSet(BuildContext context) => Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: Dimens.MaxWidthSkill),
        child: const Column(
          children: [
            HeadLine4(text: 'skill set'),
            SizedBox(height: 32),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                SkillChipAndroid(),
                SkillChipKotlin(),
                SkillChipFlutter(),
                SkillChipDart(),
                SkillChipNodeJs(),
                SkillChipTypeScript(),
                SkillChipJava(),
                SkillChipFirebase(),
                SkillChipJira(),
                SkillChipAdmob(),
                SkillChipLang(
                  label: 'TOEIC 870',
                ),
                SkillChipLang(
                  label: 'native level Japanese',
                ),
              ],
            ),
          ],
        ),
      ),
    );
