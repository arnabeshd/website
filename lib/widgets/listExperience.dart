import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CustomExperience extends StatelessWidget {
  CustomExperience({Key? key}) : super(key: key);

  final dates = [
    '10/2020 - 05/2021',
    '08/2017 - 09/2018',
    ' ',
    '07/2016 - 08/2016',
  ];

  final titles = [
    'Woocal Automotive Technology GmbH | Aachen, Germany',
    'Tata Consultancy Services Limited | Kolkata, India',
    'Tata Consultancy Services Limited | Thiruvananthapuram, India',
    'Orient Electric Limited | Kolkata, India',
  ];

  final subtitles = [
    'Working Student, Website Development and Maintenance',
    'Assistant Systems Engineer, Engineering Services',
    'Trainee, Engineering Services',
    'Intern',
  ];

  final descriptions = [
    'Developed multilingual corporation website (54 web pages across three languages) using HTML, CSS, JavaScript, WordPress, and Elementor. Co-authored Product Requirement Specification (PRS) and maintenance checklist',
    'Reviewed and addressed non-conformances in Design History Files (DHFs) in a CAPA (Corrective Action and Preventive Action) project for an offshore medical device manufacturer. Product - Intraocular Lenses (IOLs) and Phacoemulsifiers. Prepared gap assessment reports and facilitated remediation to ensure Design Controls (21 CFR 820.30) compliance ',
    'Coordinated project milestones as a representative for a learning group of 25 trainees',
    'Redesigned DIP switches (Piano type) for Pedestal fans/ventilators',
  ];

  final links = [
    'https://www.woocal.de/',
    'https://www.tcs.com/',
    'https://www.tcs.com/',
    'https://www.orientelectric.com/'
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
