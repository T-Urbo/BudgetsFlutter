// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

export 'welcome_screen_widgets.dart';

// ignore: use_key_in_widget_constructors
class ImageSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset('assets/images/DENGE_logo.png'),
        ));
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
          height: 300,
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
                            color: Colors.black),
                      ),
                      const Text(
                        "With Our Apllication",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 200,
                        width: 300,
                        child: const Text(
                          "Simple intuitive design. Keep track on your savings process to meet your financial goals.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(25, 33, 38, 0.3),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
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
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
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
                            fontWeight: FontWeight.normal,
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
                  shape: const StadiumBorder()),
              onPressed: () {},
              child: const Text("Get Started"))),
    );
  }
}
