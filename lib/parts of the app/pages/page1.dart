// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        'lib/Images/gown.png',
      ),
    );
  }
}
