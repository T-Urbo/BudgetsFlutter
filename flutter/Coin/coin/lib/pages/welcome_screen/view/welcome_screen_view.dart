// Place Scaffold here!

import 'package:coin/pages/welcome_screen/widgets/welcome_screen_widgets.dart';
import 'package:coin/pages/global_widgets/custom_page_route.dart';

import 'package:flutter/material.dart';

export 'welcome_screen_view.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget buildView(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const Text("Keep"),
    );
  }

  @override
  Widget build(BuildContext context) {
    RichText text;
    return MaterialApp(
      title: 'Coin',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      // ignore: prefer_const_constructors
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageSizedBox(),
            GreetingsTextPageView(),
            GetStartedButton(),
          ],
        ),
      ),
    );
  }
}
