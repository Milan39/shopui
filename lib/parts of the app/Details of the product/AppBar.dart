import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopui/parts%20of%20the%20app/Front%20Pages/HomePage.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // first icon
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
              
            },
            child: Container(
                padding: const EdgeInsets.only(left: 7),
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
          ),

          // column
          Column(
            children: [
              Text(
                'Mushie',
                style: GoogleFonts.roboto(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Details Product',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  color: Colors.grey[500],
                ),
              )
            ],
          ),

          // second icon
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
          )
        ],
      ),
    );
  }
}
