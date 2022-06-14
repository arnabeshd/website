import 'package:flutter/material.dart';
import 'package:site/helpers/responsive.dart';

class SkillWrap extends StatelessWidget {
  const SkillWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !ResponsiveMaker.isSmallScreen(context)
        ? Wrap(
            spacing: 8,
            runSpacing: 6,
            children: [
              Chip(
                label: const Text('Python'),
                labelStyle: Theme.of(context).textTheme.bodyText2,
              ),
              Chip(
                label: const Text('Bootstrap 5'),
                labelStyle: Theme.of(context).textTheme.bodyText2,
              ),
              Chip(
                label: const Text('JavaScript'),
                labelStyle: Theme.of(context).textTheme.bodyText2,
              ),
              Chip(
                label: const Text('WordPress'),
                labelStyle: Theme.of(context).textTheme.bodyText2,
              ),
              Chip(
                label: const Text('MATLAB'),
                labelStyle: Theme.of(context).textTheme.bodyText2,
              ),
              Chip(
                label: const Text('Flutter'),
                labelStyle: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          )
        : Transform(
            transform: Matrix4.identity()..scale(0.9),
            child: Wrap(
              spacing: 8,
              runSpacing: 6,
              children: [
                Chip(
                  label: const Text('Python'),
                  labelStyle: Theme.of(context).textTheme.bodyText2,
                ),
                Chip(
                  label: const Text('Bootstrap 5'),
                  labelStyle: Theme.of(context).textTheme.bodyText2,
                ),
                Chip(
                  label: const Text('JavaScript'),
                  labelStyle: Theme.of(context).textTheme.bodyText2,
                ),
                Chip(
                  label: const Text('WordPress'),
                  labelStyle: Theme.of(context).textTheme.bodyText2,
                ),
                Chip(
                  label: const Text('MATLAB'),
                  labelStyle: Theme.of(context).textTheme.bodyText2,
                ),
                Chip(
                  label: const Text('Flutter'),
                  labelStyle: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          );
  }
}
