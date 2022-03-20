import 'package:beautysalon/pages/appointment.dart';
import 'package:beautysalon/pages/account.dart';
import 'package:beautysalon/pages/appointment_1.dart';
import 'package:beautysalon/pages/appointment_2.dart';
import 'package:beautysalon/pages/book.dart';
import 'package:beautysalon/pages/book_appointment.dart';
import 'package:beautysalon/pages/book_appointment_1.dart';
import 'package:beautysalon/pages/book_appointment_2.dart';
import 'package:beautysalon/pages/book_more_appointment.dart';
import 'package:beautysalon/pages/chats.dart';
import 'package:beautysalon/pages/home.dart';
import 'package:beautysalon/pages/intro.dart';
import 'package:beautysalon/pages/login.dart';
import 'package:beautysalon/pages/signup.dart';
import 'package:beautysalon/pages/tab_bar.dart';
import 'package:beautysalon/pages/users.dart';
import 'package:beautysalon/uidata.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // initialRoute: '/',
        // routes: {
        //   '/' :(context)=>Signup(),
        //   '/ChatScreen':(context)=>Chat(),
        // },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: IntroPage(),
        routes: <String, WidgetBuilder>{
          UIData.homePageRoute: (BuildContext context) => HomePage(),
          UIData.introPageRoute: (BuildContext context) => IntroPage(),
          UIData.bookPageRoute: (BuildContext context) => BookPage(),
          UIData.bookappointmentPageRoute: (BuildContext context) =>
              Bookappointment(),
          UIData.accountPageRoute: (BuildContext context) => Account(),
          UIData.chatPageRoute: (BuildContext context) => Chat(),
          UIData.appointmentPageRoute: (BuildContext context) => Appointment(),
          UIData.appointment1PageRoute: (BuildContext context) =>
              Appointment1(),
          UIData.appointment2PageRoute: (BuildContext context) =>
              Appointment2(),
          UIData.bookappointment1PageRoute: (BuildContext context) =>
              Bookapp1(),
          UIData.bookappointment2PageRoute: (BuildContext context) =>
              Bookapp2(),
          UIData.bookmoreappointmentPageRoute: (BuildContext context) =>
              Bookmoreappointment(),
        });
  }
}
