import 'package:beautysalon/pages/Bottom/bottm.dart';
import 'package:beautysalon/uidata.dart';
import 'package:beautysalon/widgets/button%206.dart';
import 'package:beautysalon/widgets/button3.dart';
import 'package:beautysalon/widgets/button4.dart';
import 'package:beautysalon/widgets/button7.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Bookmoreappointment extends StatefulWidget {
  const Bookmoreappointment({Key? key}) : super(key: key);

  @override
  _BookmoreappointmentState createState() => _BookmoreappointmentState();
}

class _BookmoreappointmentState extends State<Bookmoreappointment> {
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
                        color: UIData.mainColor,
                      ),
                    ),
                    Icon(
                      Icons.payment_outlined,
                      color: UIData.mainColor,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: screen_size_height * 0.004,
                        width: screen_size_width * 0.3,
                        color: UIData.mainColor,
                      ),
                    ),
                    Icon(
                      Icons.send,
                      color: UIData.mainColor,
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
                      ),
                    ),
                    SizedBox(
                      width: screen_size_width * 0.12,
                    ),
                    Text(
                      "Payment",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: screen_size_width * 0.2,
                    ),
                    Text(
                      "Finished",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screen_size_height * 0.05,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screen_size_height * 0.005,
                    ),
                    Row(
                      children: [
                        Icon(Icons.house, color: Colors.grey),
                        SizedBox(
                          width: screen_size_width * 0.01,
                        ),
                        Text("Address",
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: screen_size_height * 0.005,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: screen_size_width * 0.005,
                        ),
                        Text("+9285476214",
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screen_size_height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: screen_size_height * 0.002,
                  width: screen_size_width * 0.9,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: screen_size_height * 0.03,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(children: [
                  Text(
                    "Women\s Cut",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: screen_size_width * 0.47,
                  ),
                  Text(
                    "2021.06.02",
                    style: TextStyle(
                        color: UIData.mainColor, fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              SizedBox(
                height: screen_size_height * 0.02,
              ),
              Container(
                margin: EdgeInsets.only(left: 19),
                child: Row(children: [
                  Icon(
                    Icons.account_circle_sharp,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: screen_size_width * 0.02,
                  ),
                  Text(
                    "Julia Gold",
                    style: TextStyle(
                     color:Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: screen_size_width * 0.4,
                  ),
                  Text(
                    "10:55-11:40",
                    style: TextStyle(
                        color: UIData.mainColor, fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              SizedBox(height: screen_size_height*0.06,),
              Button6(btname: "Book More Appointment"),
              SizedBox(height: screen_size_height*0.03,),
              Button7(btname: "Go to Appointments")
            ],
          ),
        ),
        bottomNavigationBar: Navbar(),
        );
  }
}
