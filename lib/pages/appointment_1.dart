import 'package:beautysalon/uidata.dart';
import 'package:beautysalon/widgets/book_app11.dart';
import 'package:beautysalon/widgets/book_app12.dart';
import 'package:beautysalon/widgets/button3.dart';
import 'package:flutter/material.dart';

import 'Bottom/bottm.dart';

//ss 11

class Appointment1 extends StatefulWidget {
  const Appointment1({Key? key}) : super(key: key);

  @override
  _Appointment1State createState() => _Appointment1State();
}

class _Appointment1State extends State<Appointment1> {
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
            icon: Icon(Icons.arrow_back),
          )),
      body: Column(children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 30),
            height: screen_size_height * 0.3,
            width: screen_size_width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage('images/braid3.jpg'), fit: BoxFit.cover)),
          ),
        ),
        Text("Hair Spa",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        SizedBox(
          height: screen_size_height * 0.04,
        ),
        Container(
            margin: EdgeInsets.only(top: 8, left: 15),
            child: Bookapp11(
                name: "Childrens\'s Cut & Style",
                min: "30 min",
                money: '22.00\$')),
        SizedBox(
          height: screen_size_height * 0.02,
        ),
        Container(
            margin: EdgeInsets.only(top: 8, left: 15),
            child: Bookapp11(
                name: "Cut & Blow Dry/Ladies",
                min: "45 min",
                money: '55.00\$')),
        SizedBox(
          height: screen_size_height * 0.02,
        ),
        Container(
            margin: EdgeInsets.only(top: 8, left: 15),
            child:
                Bookapp12(name: "Men\'s Cut", min: "45 min", money: '55.00\$')),
        SizedBox(
          height: screen_size_height * 0.03,
        ),
        Button3(btname: "Book Appointment")
      ]),
      bottomNavigationBar: Navbar(),
    );
  }
}
