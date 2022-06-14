import 'package:eleanor_rigby/helpers/responsive.dart';
import 'package:flutter/material.dart';

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
              spacing: 6,
              runSpacing: 4,
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
