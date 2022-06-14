import 'package:eleanor_rigby/widgets/interestWrap.dart';
import 'package:eleanor_rigby/widgets/skillWrap.dart';
import 'package:eleanor_rigby/styles/styles.dart';
import 'package:eleanor_rigby/widgets/listEducation.dart';
import 'package:eleanor_rigby/widgets/listExperience.dart';
import 'package:eleanor_rigby/widgets/listProjects.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: light,
                  border: Border(
                    right: BorderSide(width: 1, color: lightGrey),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: light,
                      backgroundImage: const AssetImage('assets/icons/dp.png'),
                      radius: 75,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'INTERESTS',
                      style: Theme.of(context).textTheme.overline,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const InterestWrap(),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'SKILLS',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.overline,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SkillWrap(),
                  ],
                ))),
        Expanded(
          flex: 5,
          child: SingleChildScrollView(
              child: Container(
                  color: light,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            width: double.infinity,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 25),
                              child: Text(
                                'Curriculum Vitae',
                                style: Theme.of(context).textTheme.headline5,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            width: double.infinity,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 25),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 1,
                                    color: lightGrey,
                                  ),
                                ),
                              ),
                              child: Text(
                                'Education',
                                style: Theme.of(context).textTheme.headline6,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                      customeducation(),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            width: double.infinity,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 25),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 1,
                                    color: lightGrey,
                                  ),
                                ),
                              ),
                              child: Text(
                                'Experience',
                                style: Theme.of(context).textTheme.headline6,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomExperience(),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            width: double.infinity,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 25),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 1,
                                    color: lightGrey,
                                  ),
                                ),
                              ),
                              child: Text(
                                'Volunteering Roles & Projects',
                                style: Theme.of(context).textTheme.headline6,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomProjects(),
                    ],
                  ))),
        ),
      ],
    );
  }
}
