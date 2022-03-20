

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../uidata.dart';

class Appointment extends StatefulWidget {
  const Appointment({ Key? key }) : super(key: key);

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
     

      body: SingleChildScrollView(
        child:Column(
          children: [
            
            Container(
              margin: EdgeInsets.only(right: 260),
              child:  Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: screen_size_height * 0.002,
                  width: screen_size_width * 0.4,
                  color:UIData.mainColor,
                ),
            ),
            ),
SizedBox(height: screen_size_height*0.18,),
           Container(
              height: screen_size_height * 0.15,
              width: screen_size_width * 0.42,
                      decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage('images/logo.png'), fit: BoxFit.cover)),
             
            ),

            Text("No Appointments",style: TextStyle(
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),)

           
               ],
             ),
            ),
            // bottomNavigationBar: Navbar(),
         
      );
      
   
  }
}