import 'package:eleanor_rigby/helpers/responsive.dart';
import 'package:eleanor_rigby/widgets/interestWrap.dart';
import 'package:eleanor_rigby/widgets/skillWrap.dart';
import 'package:eleanor_rigby/pages/large_screen.dart';
import 'package:eleanor_rigby/pages/small_screen.dart';
import 'package:eleanor_rigby/styles/styles.dart';
import 'package:eleanor_rigby/widgets/App_custom.dart';
import 'package:eleanor_rigby/widgets/bottomappbar_custom.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: Appbar_custom(context, scaffoldKey),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
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
          ),
        ),
      ),
      body: const ResponsiveMaker(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: LargeScreen(),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () async {
      //     final storage = FirebaseStorage.instance;
      //     final storageRef = FirebaseStorage.instance.ref();

      //     // Note that you can use variables to create child values
      //     final fileName = "Curriculum Vitae.pdf";
      //     final spaceRef = storageRef.child(fileName);

      //     // File path is "images/space.jpg"
      //     final path = spaceRef.fullPath;

      //     final url = path.toString();
      //     if (await canLaunchUrlString(url)) {
      //       await launchUrlString(url);
      //     } else {
      //       throw 'Could not launch $url';
      //     }
      //   },
      //   label: Text(
      //     'PDF',
      //     style: Theme.of(context).textTheme.button,
      //   ),
      //   icon: const Icon(Icons.open_in_new_outlined),
      //   backgroundColor: textGrey,
      // ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: bottomAppBar(context, scaffoldKey),
    );
  }
}
