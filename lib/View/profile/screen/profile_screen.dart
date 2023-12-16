import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          body: Container(
            height: 600,
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: 20,),
                Text("Hello",
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff666766),
                    height: 15/12,
                  ),
                  textAlign: TextAlign.left,),
            Text(
              "Hashim Ali",
              style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Color(0xff2e2e2d),
                height: 24/16,
              ),
              textAlign: TextAlign.left,),
              ],
            ),
          ),
        ) );
  }
}
