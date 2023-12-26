import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/textField_prefix.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 1), // changes the shadow position
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.green,
                      size: 28,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Robbert',
                style: GoogleFonts.barlow(fontSize: 21),
              ),
              const SizedBox(height: 15),
              RichText(
                text: TextSpan(
                  text: 'Where do you like to ',
                  style: GoogleFonts.barlow(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'go',
                      style: GoogleFonts.barlow(
                        color:
                            Colors.green, // Set the color for the specific word
                        fontWeight:
                            FontWeight.bold, // Optional: Adjust other styles
                      ),
                    ),
                    const TextSpan(
                      text: '?',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextFieldWithPrefixIcon(),
        )
      ],
    ));
  }
}
