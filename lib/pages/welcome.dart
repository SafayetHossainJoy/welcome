import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              )),
        ),
        body: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 25,
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Stack(children: [
                Image.asset(
                  "images/S2.jpg",
                  height: 150,
                ),
              ]),
              SizedBox(
                height: 11,
              ),
              Text(
                "Welcome to to our app",
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: Color.fromARGB(255, 5, 59, 102),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Let us introduce just a few of our top features",
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: Color.fromARGB(255, 14, 16, 17),
                ),
              ),
            ])));
  }
}
