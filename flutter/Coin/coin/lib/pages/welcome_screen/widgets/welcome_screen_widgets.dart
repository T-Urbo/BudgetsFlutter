// ignore_for_file: use_key_in_widget_constructors

import 'package:coin/pages/login/view/login_screen_view.dart';
import 'package:coin/pages/global_widgets/custom_page_route.dart';

import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

export 'welcome_screen_widgets.dart';

// ignore: use_key_in_widget_constructors
class ImageSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Image.asset('assets/images/DENGE_logo.png'),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class GreetingsTextPageView extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          width: 332,
          child: Align(
            alignment: Alignment.center,
            child: PageView(
              controller: _controller,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  // height: 300,
                  // width: 300,
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Quickly Grow Your Money",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 55,
                        child: const Text(
                          "Simple intuitive design. Keep track on your savings process to meet your financial goals.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(188, 188, 188, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 55,
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Simple Money Tracker",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const Text(
                        "It takes seconds to record daily transactions.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(188, 188, 188, 1),
                        ),
                      ),
                      const Text(
                        "Put them into clear and visualized categories such as Expense or Income.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(188, 188, 188, 1),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 55,
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Multiple Devices",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const Text(
                        "Keep track on savings process. Safety synchronize across devices with Bank standart security.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(188, 188, 188, 1),
                        ),
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
            // ignore: prefer_const_constructors
            effect: ScrollingDotsEffect(
              dotColor: Color.fromRGBO(228, 228, 228, 1),
              dotHeight: 10,
              dotWidth: 10,
              activeDotColor: Colors.black,
              activeDotScale: 1.0,
            ),
          ),
          alignment: Alignment.topCenter,
        )),
      ],
    );
  }
}

class GetStartedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 56,
      child: Align(
          alignment: Alignment.center,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 56),
                primary: const Color.fromRGBO(25, 33, 38, 1),
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                Navigator.push(context, CustomPageRoute(child: LoginScreen()));
              },
              child: const Text("Get Started"))),
    );
  }
}
