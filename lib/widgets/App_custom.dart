import 'package:eleanor_rigby/helpers/responsive.dart';
import 'package:eleanor_rigby/styles/styles.dart';
import 'package:flutter/material.dart';

AppBar Appbar_custom(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: !ResponsiveMaker.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: Image.asset(
                    'assets/icons/DAS.png',
                    width: 150,
                  ),
                )
              ],
            )
          : Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
                padding: EdgeInsets.only(left: 14),
                child: IconButton(
                    onPressed: () {
                      key.currentState?.openDrawer();
                    },
                    icon: Icon(Icons.menu)),
              ),
              Container(
                child: Image.asset(
                  'assets/icons/DAS.png',
                  width: 150,
                ),
              )
            ]),
      elevation: 0.75,
      backgroundColor: Colors.white,
      foregroundColor: textGrey,
      //shape: Border(bottom: BorderSide(color: lightGrey, width: 1))
    );
