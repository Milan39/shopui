// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        'lib/Images/image1.png',
        // fit: BoxFit.contain,
      ),
    );
  }
}
