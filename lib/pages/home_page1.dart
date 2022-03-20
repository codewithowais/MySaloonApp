import 'package:beautysalon/pages/Bottom/bottm.dart';
import 'package:beautysalon/pages/account.dart';
import 'package:beautysalon/pages/appointment.dart';
import 'package:beautysalon/pages/appointment_1.dart';
import 'package:beautysalon/pages/book_appointment_1.dart';
import 'package:beautysalon/pages/book_appointment_2.dart';
import 'package:beautysalon/pages/home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../uidata.dart';

class Homepage1 extends StatefulWidget {
  const Homepage1({Key? key}) : super(key: key);

  @override
  _Homepage1State createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
  int index = 0;
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final List<Widget> PagesAll = [
    Homepage1(),
    Bookapp1(),
    Bookapp2(),
    Appointment(),
    Appointment1()
  ];
  @override
  void initState() {
    super.initState();
    final _pageController = PageController();
  }

  Widget build(BuildContext context) {
    final items = <Widget>[
      // IconButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, UIData.homePageRoute);
      //   },
      // icon:

      Icon(
        Icons.home,
        size: 30,
        color: UIData.mainColor,
      ),

      // ),

      Icon(
        Icons.message,
        size: 30,
        color: UIData.mainColor,
      ),

      Icon(
        Icons.add,
        size: 30,
        color: UIData.mainColor,
      ),

      Icon(
        Icons.favorite,
        color: UIData.mainColor,
        size: 30,
      ),

      Icon(
        Icons.person,
        color: UIData.mainColor,
        size: 30,
      )
    ];

    return Scaffold(
      extendBody: true,

      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Owais"),
        elevation: 0,
        centerTitle: true,
      ),
      // body: PagesAll[index],

      // Center(
      //     child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text(
      //       '$index',
      //       style: TextStyle(
      //         color: Colors.black,
      //         fontSize: 120,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         final navigationState = navigationKey.currentState!;
      //         navigationState.setPage(0);
      //       },
      //       style: ElevatedButton.styleFrom(
      //         primary: UIData.mainColor,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(9)),
      //       ),
      //       child: Text(
      //         "Get Started",
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 18,
      //         ),
      //       ),
      //     ),
      //   ],
      // )),
      bottomNavigationBar: CurvedNavigationBar(
        key: navigationKey,
        items: items,
        index: index,
        // onTap: (index) => setState(() => this.index = index),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            if (index == 0) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            } else if (index == 1) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Bookapp1()));
            } else if (index == 2) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Account()));
            } else if (index == 3) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Appointment()));
            } else if (index == 4) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Account()));
            }
          });
        },

        // onTap: (index) => setState(()=> this.index = index),
      ),
    );

    // body: Container(
    //   color: Colors.red,
    //   child: Text("helloo"),
    // ),
  }
}
