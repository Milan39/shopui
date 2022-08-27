// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LastPart extends StatefulWidget {
  const LastPart({Key? key}) : super(key: key);

  @override
  State<LastPart> createState() => _LastPartState();
}

class _LastPartState extends State<LastPart> {
  int quantity = 1;
  bool ontapped = true;
 
  void _IncreaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _DecreaseQuantity() {
    setState(() {
      if (quantity <= 1) {
        showDialog(
            context: context,
            builder: (context) {
              return CupertinoAlertDialog(
                title: Text('Quantity can\'t be negative'),
                content: Text(
                  'Thank you',
                  style: TextStyle(fontSize: 16),
                ),
                actions: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('OK'),
                  )
                ],
              );
            });
      } 
      else {
        quantity--;
      }
    });
  }

  void _ontapped() {
    setState(() {
      ontapped = false;
    });
  }

  void _onDoubleTapped(){
    setState(() {
      ontapped = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: Container(
            height: 320,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white, width: 5),
                borderRadius: BorderRadius.circular(15)),
          ),
        ),
        Container(
          margin: EdgeInsets.all(18),
          height: 300,
          width: 340,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            // start {Column is used  at first}
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // the first part have text and icons so we used row for vertical approach
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Baby Gown',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: _ontapped,
                      
                      onDoubleTap: _onDoubleTapped,
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: ontapped ? Colors.white : Colors.red,
                            border: Border.all(
                                width: 2.5,
                                color: Color.fromARGB(255, 239, 200, 200)),
                            shape: BoxShape.circle),
                        child: Center(
                            child: Icon(
                          Icons.favorite_border,
                          color: Color.fromARGB(255, 239, 200, 200),
                        )),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                // second part is just text so we used text in column with some sizedBox to give hight.
                Text(
                  'Details',
                  style: GoogleFonts.bebasNeue(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),

                // start The third part have three sub-parts which include black circle at front and follow with text widget
                SizedBox(height: 10),

                // first
                Row(
                  children: [
                    CircleAvatar(
                      minRadius: 5,
                      maxRadius: 5,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text('Size 0-3 Months',
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 12,
                        ))
                  ],
                ),
                // second
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      minRadius: 5,
                      maxRadius: 5,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text('Made with Organic Cotton',
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 12,
                        ))
                  ],
                ),
                // third
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      minRadius: 5,
                      maxRadius: 5,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Made in India',
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 12,
                        )),
                  ],
                ),
                // end of third part

                // start of fourth part
                // here there were just two text widgets with different style so i used Richtext widgets, here Rich text is not working so we used normal text widgets

                SizedBox(
                  height: 10,
                ),
                Text(
                  'Care',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Tumble Dry low, But Do not Exceed 40 degree celcuis, wash inside Out And Iron on Reverse (If Needed)",
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),

                // end of fourth part

                // last part contains one price, container with - 1 + and add to cart buttons so we used row widgets
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$28.00',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),

                    // middle part of last part

                    Row(
                      children: [
                        GestureDetector(
                          onTap: _DecreaseQuantity,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 3.0, left: 3),
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Center(
                              child: Text(quantity.toString()),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: _IncreaseQuantity,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        )
                      ],
                    ),

                    // add cart button
                    GestureDetector(
                      onTap: (){
                        showDialog(context: context, builder: (BuildContext context){
                          return CupertinoAlertDialog(
                            title: Text('Added to cart Successfully'),
                            content: Text('Shop more!!'),
                            actions: [
                              MaterialButton(onPressed: (){
                                // if this button is pressed it will navigated to the cart page.
                                Navigator.pop(context);
                                
                              },
                              child: Text('Go to Cart'),),

                              MaterialButton(onPressed: (){
                                // if this button is pressed it will navigate to shopping page
                                Navigator.pop(context);
                              },
                              child: Text('Shop More'),)
                            ],
                          );
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
