import 'package:eleanor_rigby/helpers/responsive.dart';
import 'package:flutter/material.dart';

class SkillChip extends StatelessWidget {
  SkillChip({Key? key}) : super(key: key);

  final skills = [
    'Python',
    'Bootstrap 5',
    'JavaScript',
    'WordPress',
    'MATLAB',
    'Flutter',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: skills.length,
        itemBuilder: (context, index) {
          return Container(
              child: !ResponsiveMaker.isSmallScreen(context)
                  ? Chip(
                      label: Text(
                        skills[index],
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    )
                  : Transform(
                      transform: Matrix4.identity()..scale(0.8),
                      child: Chip(
                        label: Text(
                          skills[index],
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      )));
        });
  }
}
