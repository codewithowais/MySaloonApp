//ss 1


import 'package:beautysalon/pages/Bottom/bottm.dart';
import 'package:beautysalon/pages/book_appointment.dart';
import 'package:beautysalon/widgets/book_app11.dart';
import 'package:beautysalon/widgets/book_app12.dart';
import 'package:beautysalon/widgets/book_app13.dart';
import 'package:beautysalon/widgets/book_app14.dart';
import 'package:beautysalon/widgets/book_app15.dart';
import 'package:beautysalon/widgets/button4.dart';
import 'package:beautysalon/widgets/checkbox.dart';
import 'package:beautysalon/widgets/checkbox1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../uidata.dart';

class Bookapp1 extends StatefulWidget {
  const Bookapp1({ Key? key }) : super(key: key);

  @override
  _Bookapp1State createState() => _Bookapp1State();
}

class _Bookapp1State extends State<Bookapp1> {
  @override
  Widget build(BuildContext context) {
     final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
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

        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 8,left: 10),
              child: Bookapp11(name: "Cut & Blow Dry / Ladies", min: "45 min", money: '55.00\$')
            ),
            // SizedBox(height:screen_size_height*0.02 ,),
            Container(
              margin: EdgeInsets.only(top: 8,left: 10),
              child: Bookapp12(name: "Men\'s Cut", min: "45 min", money: '55.00\$')
            ),
            SizedBox(height:screen_size_height*0.03 ,),
            Container(
                 margin: EdgeInsets.only(top: 8,left: 5),
              child: Bookapp13(),
            ),
             SizedBox(height: screen_size_height*0.02,),
            Container(child: Text("Choose Specialist",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),),),
            SizedBox(height: screen_size_height*0.02,),
            Container(
               margin: EdgeInsets.only(left: 10),
              child: Bookapp14(),),
              Container(
               margin: EdgeInsets.only(left: 10,),
              child: Bookapp15(name1: "10:10-10:40", name2:"10:40-11:00")),
               SizedBox(height: screen_size_height*0.02,),
               Container(
               margin: EdgeInsets.only(left: 10,),
              child: Bookapp15(name1: "11:10-11:40", name2: "11:40-12:10")),
              SizedBox(height: screen_size_height*0.02,),
               Container(
               margin: EdgeInsets.only(left: 10,),
              child: Bookapp15(name1: "12:10-12:40", name2: "12:40-13:10")),
              SizedBox(height: screen_size_height*0.02,),
               Container(
               margin: EdgeInsets.only(left: 10,),
              child: Bookapp15(name1: "13:10-13:40", name2: "13:40-14:10")),
              SizedBox(height: screen_size_height*0.02,),
               Container(
               margin: EdgeInsets.only(left: 10,),
              child: Bookapp15(name1: "14:10-14:40", name2: "14:40-15:10")),
              SizedBox(height: screen_size_height*0.02,),
               Container(
               margin: EdgeInsets.only(left: 10,),
              child: button4(btname: "Book Your Appointment")),
          ],),
        ),
        bottomNavigationBar: Navbar(),
    );
  }
}