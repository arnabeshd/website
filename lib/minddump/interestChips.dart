import 'package:eleanor_rigby/helpers/responsive.dart';
import 'package:flutter/material.dart';

class InterestChip extends StatelessWidget {
  InterestChip({Key? key}) : super(key: key);

  final interests = [
    'Medical Devices',
    'Community Engagement',
    'Regulatory Affairs',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: interests.length,
        itemBuilder: (context, index) {
          return Container(
              child: !ResponsiveMaker.isSmallScreen(context)
                  ? Chip(
                      label: Text(
                        interests[index],
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    )
                  : Transform(
                      transform: Matrix4.identity()..scale(0.8),
                      child: Chip(
                        label: Text(
                          interests[index],
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      )));
        });
  }
}
