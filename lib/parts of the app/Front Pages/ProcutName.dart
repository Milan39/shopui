import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductName extends StatefulWidget {
  const ProductName({Key? key}) : super(key: key);

  @override
  State<ProductName> createState() => _ProductNameState();
}

class _ProductNameState extends State<ProductName> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Text(
              'All Products',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            'Nursery',
            style: GoogleFonts.roboto(fontSize: 16),
          ),
          Text(
            'Wear',
            style: GoogleFonts.roboto(fontSize: 16),
          ),
          Text(
            'Feeding',
            style: GoogleFonts.roboto(fontSize: 16),
          ),
          Text(
            'Bath+',
            style: GoogleFonts.roboto(fontSize: 16),
          )
        ],
      ),
    );
  }
}
