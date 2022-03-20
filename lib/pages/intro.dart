// splash screen

import 'dart:async';

import 'package:beautysalon/pages/home.dart';
import 'package:beautysalon/pages/home_page1.dart';
import 'package:beautysalon/pages/login.dart';
import 'package:beautysalon/uidata.dart';
import 'package:beautysalon/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override

  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 4), () {
  //     Navigator.of(context)
  //         .push(MaterialPageRoute(builder: (context) => Homepage1()));
  //   });
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "images/main.png",
                      ),
                      fit: BoxFit.contain)),
              height: MediaQuery.of(context).size.height * .45,
            ),
            Text("Book your \nFavourite Stylist",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    fontSize: 22,
                    letterSpacing: 1.3)),
            Text(
              "Lorem Ipsum is simply a dummy text of the printing and typesetting industry",
              textAlign: TextAlign.center,
              style: TextStyle(height: 1.8, letterSpacing: 1.3),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Login()));

                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => Homepage1()));
              },
              style: ElevatedButton.styleFrom(
                primary: UIData.mainColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9)),
              ),
              child: Text(
                "Get Started",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            // MyButton(btnText: "Get Started",
            // onpressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),))),
          ],
        ),
      ),
    );
  }
}
