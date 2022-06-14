import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CustomProjects extends StatelessWidget {
  CustomProjects({Key? key}) : super(key: key);

  final dates = [
    '09/2021 - Present',
    '03/2016 - 02/2017',
    '03/2017 - 07/2017',
    '16/02/2016',
  ];

  final titles = [
    'Google DSC - RWTH Aachen University | Aachen, Germany',
    'DELL Campassador Program - Season 2 | Kolkata, India',
    'Detection & analysis of Leukemic cells in blood smear | Kolkata, India',
    'Cross-Hack 2016 Hackathon | Kolkata, India',
  ];

  final subtitles = [
    'Head of Technology',
    'Campassador',
    'Bachelor Project',
    'Smart Cane',
  ];

  final descriptions = [
    'Hosting tuesday.py and hands-on workshops on web technologies, data analytics, and growing as a community.',
    'Awarded Dell Campassador of the Year 2016 out of 2500 pan-Indian participants, collaborating with the native student community and initiating on-campus engagements. Won first place out of 10 finalists in the Dell My PC My Story Contest, a unique storytelling event on how technology has played a significant role in our achievements',
    'Devised an algorithm for measuring Leukemic cell (B-CLL) count using circle Hough Transform (MATLAB - Image Processing Toolbox)',
    'Won first place out of 20 teams in the medical technologies hackathon, building assistive device for the visually impaired that helps detect obstacles with auditory and tactile feedback, using Arduino and USG',
  ];

  final links = [
    'https://gdsc.community.dev/rwth-aachen-university/',
    '',
    '',
    ''
  ];

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
