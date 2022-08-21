import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  final _controller = PageController();

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
    List<String> messagesList = [
      "Keeping Your Personal Finances On Track",
      "Keeping Your Personal Finances On Track",
      "Keeping Your Personal Finances On Track"
    ];

    return MaterialApp(
      title: 'Coin',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      // ignore: prefer_const_constructors
      home: Scaffold(
          body: SizedBox(
        width: 400,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(
            width: 300,
            height: 300,
            child: Align(
              alignment: Alignment.topCenter,
              child: Icon(Icons.arrow_back_ios_new),
            ),
          ),
          SizedBox(
            width: 300,
            height: 300,
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 250,
                  height: 80,
                  child: CarouselSlider.builder(
                    itemCount: messagesList.length,
                    itemBuilder: (context, index, realIndex) {
                      return buildView(context);
                    },
                    options: CarouselOptions(
                      height: 400,
                    ),
                  )),
            ),
          ),
          SizedBox(
            width: 280,
            height: 40,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(280, 40),
                        primary: Colors.black,
                        shape: const StadiumBorder()),
                    onPressed: () {},
                    child: const Text("Get Started"))),
          ),
        ]),
      )),
    );

    // ignore: dead_code
  }
}

// LIST VIEW

//  ListView(
//                       scrollDirection: Axis.horizontal,
//                       children: <Widget>[
//                         Container(
//                           width: 250,
//                           alignment: Alignment.center,
//                           child: const Text(
//                             "Keeping Your Personal Finances On Track",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 16),
//                           ),
//                         ),
//                         Container(
//                           width: 250,
//                           alignment: Alignment.center,
//                           child: const Text(
//                             "Anton",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 16),
//                           ),
//                         ),
//                         Container(
//                           width: 250,
//                           alignment: Alignment.center,
//                           child: const Text(
//                             "Durex",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 16),
//                           ),
//                         ),
//                       ],
//                     ),