import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_eth/pages/home_page.dart';

import '../utils/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  void navigateToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('lib/images/welcome.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.9), // Set the opacity value here
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Traveling made easy!',
                style: GoogleFonts.barlow(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              Text(
                'Explore in the unparalleled beauty and richness of Ethiopia\'s most adventurous and captivating destinations ',
                style: GoogleFonts.barlow(
                    fontSize: 19, color: Colors.white, height: 1.5
                    // fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 30),
              Center(
                child: CustomButton(
                  buttonText: 'Let\'s go!',
                  onPressed: () =>
                      {Navigator.pushReplacementNamed(context, '/home')},
                ),
              ),
              const SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
