import 'dart:async';
import 'package:flutter/material.dart';

import 'Core/Constants.dart';
import 'Core/pallete.dart';
import 'View/Onboard/screen/onboardbase.dart';
// Other imports...

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextPage();
  }

  void navigateToNextPage() {
    Timer(
      const Duration(seconds: 3), // Change the duration as needed
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                OnBoardBase(), // Replace this with your desired destination
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Pallete.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 10),
          Column(
            children: [
              SizedBox(
                width: 220,
                child: LinearProgressIndicator(
                  color: Pallete.secondaryColor,
                ),
              ),
              SizedBox(height: 10),
              Text("Connecting To ChargeMod"),
            ],
          ),
        ],
      ),
    );
  }
}
