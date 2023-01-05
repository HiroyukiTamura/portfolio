import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:portfolio/resource/dimens.dart';
import 'package:portfolio/ui/widget/skill_chip.dart';

part 'section_skill_set.g.dart';

@swidget
Widget _sectionSkillSet(BuildContext context) => ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: Dimens.MaxWidthSkill),
      child: Column(
        children: [
          Text(
            'skill set',
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(height: 32),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: const [
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
                label: 'native level Japanese',
              ),
              SkillChipLang(
                label: 'B1 level English',
              ),
            ],
          ),
        ],
      ),
    );