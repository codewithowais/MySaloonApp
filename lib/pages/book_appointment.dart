

import 'package:beautysalon/pages/Bottom/bottm.dart';
import 'package:beautysalon/pages/book_more_appointment.dart';
import 'package:beautysalon/uidata.dart';
import 'package:beautysalon/widgets/checkbox.dart';
import 'package:beautysalon/widgets/checkbox1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';

class Bookappointment extends StatefulWidget {
  const Bookappointment({Key? key}) : super(key: key);

  @override
  _BookappointmentState createState() => _BookappointmentState();
}

class _BookappointmentState extends State<Bookappointment> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: UIData.mainColor,
          leading:
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),),
          
          
          title: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(
              "Book Appointment",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: screen_size_height * 0.3,
                  width: screen_size_width * 0.95,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 8,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              height: 80,
                              width: 120,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(17), // Image border
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(40), // Image radius
                                  child: Image.asset(
                                    'images/hairdresser.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Julie Gold",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Women Cut",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 1.0,
                            width: 370.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Text(
                                "10:55-11:40 2021.06.02",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Text(
                              "\$55.00",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Text(
                                "Coupon",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              width: 210,
                            ),
                            Text(
                              "-\$23.00",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 1.0,
                            width: 370.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Text(
                                "Total Pay",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                            Text(
                              "\$32.00",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: UIData.mainColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'images/cod.png',
                    height: 60,
                    width: 110,
                  ),
                  Text(
                    "  Cash payment",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(child: checkbox1()),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Image.asset(
                    'images/stripe.png',
                    height: 50,
                    width: 110,
                  ),
                  // SizedBox(
                  //   width: 20,
                  // ),
                  Text(
                    "   Stripe",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Container(child: checkbox1()),
                ],
              ),
              SizedBox(height: 10,),
               Container(
                 margin: EdgeInsets.only(left: 25),
                 child: Row(
                  children: [
                    Image.asset(
                      'images/razorpay.png',
                      height: 60,
                      width: 90,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Razorpay",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 125,
                    ),
                    Container(child: checkbox1()),
                  ],
              ),
               ),
               Container(
                   margin: EdgeInsets.only(left: 15),
                 child: Row(
                  children: [
                    Image.asset(
                      'images/paypal.png',
                      height: 70,
                      width: 100,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "PayPal",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 145,
                    ),
                    Container(child: checkbox1()),
                  ],
              ),
               ),
SizedBox(height: 30,),
               Container(
                      height: screen_size_height * 0.06,
                      width: screen_size_width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Bookmoreappointment()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: UIData.mainColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        child: Text(
                          'Confirm Payment',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
               ),
            ],
          ),
        ),
        bottomNavigationBar:Navbar(),
        
        );
  }
}

class Checkbox1 {}
