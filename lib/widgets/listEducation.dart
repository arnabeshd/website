import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class customeducation extends StatelessWidget {
  customeducation({Key? key}) : super(key: key);

  final dates = [
    '10/2019 - Present',
    '06/2013 - 07/2017',
  ];

  final titles = [
    'RWTH Aachen University | Aachen, Germany',
    'MAKAUT | Kolkata, India',
  ];

  final subtitles = [
    'Master of Science in Biomedical Engineering',
    'Bachelor of Technology in Biomedical Engineering',
  ];

  final descriptions = [
    'Relevant coursework: Systems Biology (MATLAB - Statistics and Machine Learning Toolbox), Optophysiology, Medical Statistics (SAS)',
    'Degree Grade Point Average (DGPA): 8.60/10',
  ];

  final links = ['https://www.rwth-aachen.de/', 'https://makautwb.ac.in/'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text(
                        dates[index],
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: InkWell(
                              child: Text(
                                titles[index],
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              onTap: () async {
                                if (await canLaunchUrlString(links[index])) {
                                  await launchUrlString(links[index]);
                                } else {
                                  throw 'Could not launch $links[index]';
                                }
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 3),
                            child: Text(
                              subtitles[index],
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 15),
                            child: Text(
                              descriptions[index],
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
