import 'package:animated_developer_profile/pages/Page1.dart';
import 'package:animated_developer_profile/pages/Page2.dart';
import 'package:animated_developer_profile/pages/Page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  void Function()? onTap;

  IntroPage({
    super.key,
    required this.onTap,
  });

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final _controller = PageController();

  // tracking if we are in the last page or not
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 238, 203),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 25),
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  isLastPage = (index == 2);
                });
              },
              controller: _controller,
              children: const [
                PageOne(),
                PageTwo(),
                PageThree(),
              ],
            ),
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // back button

                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(0);
                  },
                  child: const Text(
                    "Back",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: Colors.grey,
                    dotColor: Colors.white,
                  ),
                ),

                // next button
                isLastPage
                    ? GestureDetector(
                        onTap: (() {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.bounceIn,
                          );
                          Navigator.pushNamed(context, '/homepage');
                        }),
                        child: const Text(
                          "Done",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: (() {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.bounceIn,
                          );
                        }),
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
