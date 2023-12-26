import 'package:flutter/material.dart';

class TextFieldWithPrefixIcon extends StatelessWidget {
  const TextFieldWithPrefixIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.26),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 1), // changes the shadow position
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search Location',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26.0),
            borderSide: const BorderSide(
              color: Colors.transparent, // Set border color to transparent
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26.0),
            borderSide: const BorderSide(
              color: Colors.transparent, // Set border color to transparent
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26.0),
            borderSide: const BorderSide(
              color: Colors.transparent, // Set border color to transparent
            ),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
