// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
            SizedBox(
              height: 300,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/moneyandcoinsstack.png'),
              ),
            ),
            Wrap(
              spacing: 10,
              alignment: WrapAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: PageView(
                      controller: _controller,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox(
                          // height: 300,
                          // width: 500,
                          child: Column(
                            children: [
                              const Text(
                                "Keep Your Personal Finances On Track",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const Text(
                                "We help you save your money",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          child: Column(
                            children: [
                              const Text(
                                "My first flutter app",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const Text(
                                "Lets go!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          child: Column(
                            children: [
                              const Text(
                                "Crossplatform feels great!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const Text(
                                "React sosat'",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    // height: 100,
                    child: Align(
                  // ignore: sort_child_properties_last
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      dotColor: Colors.grey,
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor: Colors.lightGreen,
                      activeDotScale: 1.3,
                    ),
                  ),
                  alignment: Alignment.center,
                )),
              ],
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
          ],
        ),
      ),
    );

    // ignore: dead_code
  }
}
