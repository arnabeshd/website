import 'package:eleanor_rigby/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LargeScreenBottomAppBar extends StatelessWidget {
  const LargeScreenBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(width: 1.0, color: textGrey),
                ),
              ),
              child: Row(
                children: <Widget>[
                  const Image(
                    image: AssetImage('assets/icons/built_with_flutter.png'),
                    width: 120.0,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Icon(size: 18, Icons.copyright_outlined),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Arnabesh Das 2022',
                    style: Theme.of(context).textTheme.overline,
                  ),
                ],
              )),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              children: [
                IconButton(
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                  icon: const FaIcon(FontAwesomeIcons.linkedin),
                  color: textGrey,
                  iconSize: 25,
                  onPressed: () async {
                    const url = 'https://www.linkedin.com/in/arnabeshdas';
                    if (await canLaunchUrlString(url)) {
                      await launchUrlString(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                  icon: const FaIcon(FontAwesomeIcons.twitterSquare),
                  color: textGrey,
                  iconSize: 25,
                  onPressed: () async {
                    const url = 'https://twitter.com/arnabeshdas';
                    if (await canLaunchUrlString(url)) {
                      await launchUrlString(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
