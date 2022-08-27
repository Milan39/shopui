// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _colors = Colors.grey[350];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              fillColor: _colors,
              filled: true,
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 20),
              suffixIcon: Icon(
                Icons.search,
                size: 25,
                color: Colors.grey[500],
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: _colors!),
                  borderRadius: BorderRadius.circular(15)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: _colors!),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ),
        
      ],
    );
  }
}
