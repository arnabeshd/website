import 'package:flutter/material.dart';
import 'package:site/helpers/responsive.dart';

class InterestWrap extends StatelessWidget {
  const InterestWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !ResponsiveMaker.isSmallScreen(context)
        ? Wrap(
            spacing: 8,
            runSpacing: 6,
            children: [
              Chip(
                label: const Text('Medical Devices'),
                labelStyle: Theme.of(context).textTheme.bodyText2,
              ),
              Chip(
                label: const Text('Community Engagement'),
                labelStyle: Theme.of(context).textTheme.bodyText2,
              ),
              Chip(
                label: const Text('Regulatory Affairs'),
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
                  label: const Text('Medical Devices'),
                  labelStyle: Theme.of(context).textTheme.bodyText2,
                ),
                Chip(
                  label: const Text('Community Engagement'),
                  labelStyle: Theme.of(context).textTheme.bodyText2,
                ),
                Chip(
                  label: const Text('Regulatory Affairs'),
                  labelStyle: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          );
  }
}
