// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../pages/page1.dart';
import '../pages/page2.dart';
import '../pages/page3.dart';
import '../pages/page4.dart';
import '../pages/page5.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              SizedBox(height: 20,),
              SizedBox(
                height: 280,
                child: PageView(
                  controller: _controller,
                  children: const [
                    Page1(),
                    Page2(),
                    Page3(),
                    Page4(),
                    Page5(),
                  ],
                ),
              ),
              SizedBox(height: 15),
              SmoothPageIndicator(
                controller: _controller,
                count: 5,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.black,
                  dotColor: Colors.white,
                  dotHeight: 10,
                  dotWidth: 10
                ),
              ),
              SizedBox(height: 15,)
            ],
          );
  }
}