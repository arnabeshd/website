import 'package:eleanor_rigby/helpers/responsive.dart';
import 'package:eleanor_rigby/widgets/largeScreenBottomAppBar.dart';
import 'package:eleanor_rigby/widgets/smallScreenBottomAppBar.dart';
import 'package:flutter/material.dart';

BottomAppBar bottomAppBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    BottomAppBar(
        child: !ResponsiveMaker.isSmallScreen(context)
            ? const LargeScreenBottomAppBar()
            : const SmallScreenBottomAppBar());
