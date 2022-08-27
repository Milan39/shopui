import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBar_HomePage extends StatelessWidget {
  const AppBar_HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // Here Row will be used in app bar
        // Menu button
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(7)),
          child: Icon(Icons.menu),
        ),

        // Name of the Company
        Column(
          children: [
            Text(
              'Mushie',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, letterSpacing: 2, fontSize: 24),
            ),
            Text(
              'Welcome back Ella',
              style: GoogleFonts.roboto(fontSize: 14),
            ),
          ],
        ),

        // Shop icons with number which will be place with stack
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Container(
            height: 45,
            width: 45,
            color: Colors.white,
            child: Center(
              child: Stack(
                children: const [
                  Icon(
                    Icons.shopping_bag_outlined,
                    size: 33,
                    color: Colors.black,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 17,
                    bottom: 17,
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 170, 130, 143),
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
