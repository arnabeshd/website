import 'package:eleanor_rigby/helpers/responsive.dart';
import 'package:flutter/material.dart';

class SkillWrap extends StatelessWidget {
  const SkillWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !ResponsiveMaker.isSmallScreen(context)
        ? Wrap(
            spacing: 6,
            runSpacing: 4,
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
