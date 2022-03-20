//ss 2

import 'dart:ui';

import 'package:beautysalon/pages/Bottom/bottm.dart';
import 'package:beautysalon/uidata.dart';
import 'package:beautysalon/widgets/book_app11.dart';
import 'package:beautysalon/widgets/book_app12.dart';
import 'package:beautysalon/widgets/book_app13.dart';
import 'package:beautysalon/widgets/book_app15.dart';
import 'package:beautysalon/widgets/book_app16.dart';
import 'package:beautysalon/widgets/button3.dart';
import 'package:beautysalon/widgets/button5.dart';
import 'package:beautysalon/widgets/date.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Bookapp2 extends StatefulWidget {
  const Bookapp2({Key? key}) : super(key: key);

  @override
  _Bookapp2State createState() => _Bookapp2State();
}

class _Bookapp2State extends State<Bookapp2> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;

    DateTime selectday = DateTime.now();
    DateTime focusday = DateTime.now();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: UIData.mainColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Book Appointment",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),

      body: SafeArea(
        child: Column(
          children: [
                 Container(
                  margin: EdgeInsets.only(top: 40, left: 20),
                  child: Row(children: [
                    Icon(
                      Icons.edit_rounded,
                      color: UIData.mainColor,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: screen_size_height * 0.004,
                        width: screen_size_width * 0.3,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.payment_outlined,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: screen_size_height * 0.004,
                        width: screen_size_width * 0.3,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.send,
                      color: Colors.grey,
                    ),
                  ])),
                  SizedBox(
                height: screen_size_height * 0.007,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: screen_size_width * 0.004,
                    ),
                    Text(
                      "Appointment",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: screen_size_width * 0.15,
                    ),
                    Text(
                      "Payment",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: screen_size_width * 0.25,
                    ),
                    Text(
                      "Finished",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screen_size_height * 0.03,
              ),
              Container(
                child: Date(),
              ),
              SizedBox(
                height: screen_size_height * 0.01,
              ),
              Container(
               margin: EdgeInsets.only(top: 8,left: 5),
            child: Bookapp16(),
          ),
     SizedBox(
                height: screen_size_height * 0.01,
              ),
          Container(
            margin: EdgeInsets.only(top: 8,left: 15),
            child: Bookapp11(name: "Childrens\'s Cut & Style", min: "30 min", money: '22.00\$')
          ),
          SizedBox(height:screen_size_height*0.02 ,),
          Container(
            margin: EdgeInsets.only(top: 8,left: 15),
            child: Bookapp11(name: "Cut & Blow Dry/Ladies", min: "45 min", money: '55.00\$')
          ),
          SizedBox(height:screen_size_height*0.02 ,),
            Container(
            margin: EdgeInsets.only(top: 8,left: 15),
            child: Bookapp12(name: "Men\'s Cut", min: "45 min", money: '55.00\$')
          ),
          SizedBox(height: screen_size_height*0.01),
          Container(
               margin: EdgeInsets.only(top: 8,left: 5),
            child: Bookapp13(),
          ),
    SizedBox(height: screen_size_height*0.03,),
          Button5(btname: "Book Your Appointment")
          ],
        ),
      ),
      bottomNavigationBar:Navbar(),
    );
  }
}
