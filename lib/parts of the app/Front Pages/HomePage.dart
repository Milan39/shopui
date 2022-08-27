// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopui/parts%20of%20the%20app/Front%20Pages/Product_Details.dart';
import 'package:shopui/parts%20of%20the%20app/Front%20Pages/Searchbar_HomePage.dart';

import 'ProcutName.dart';
import 'appbar_HomePage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final color = Colors.grey[300];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Container(
        color: Colors.grey[350],
        child: CurvedNavigationBar(
          height: 50,
          animationCurve: Curves.linear,
          animationDuration: Duration(milliseconds: 300),
          backgroundColor: color!,
          color: Color.fromARGB(255, 123, 118, 118),
          items: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            Icon(
              Icons.bookmarks,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite_outline,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
            )
          ],
        ),
      ),

      // SingleChildScrollView is place to provide a scrollable property and avoid overflow problem
      //Column will be used in the body section where all the components are placed
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 30),
          child: SafeArea(
            child: Column(
              children: [
                // Appbar of home page
                AppBar_HomePage(),

                // Search bar
                SearchBar(),

                // Product name heading
                ProductName(),

                //Body part
                Products()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
