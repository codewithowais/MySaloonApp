import 'package:beautysalon/pages/appointment.dart';
import 'package:beautysalon/uidata.dart';
import 'package:flutter/material.dart';

class bar extends StatefulWidget {
  const bar({Key? key}) : super(key: key);

  @override
  _barState createState() => _barState();
}

class _barState extends State<bar> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();

    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  void dispose() {
    controller.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
    backgroundColor: UIData.mainColor,
     leading: Icon(
          Icons.menu,
          color: UIData.lightColor,
        ),
          title: Text("Appointment"),
          centerTitle: true,
          bottom: TabBar(controller: controller, tabs: [
            Tab(
              text: "Upcoming",
            ),
            Tab(
              text: "Completed",
            ),
            Tab(
              text: "Canceled",
            )
          ]),
        ),
        body: TabBarView(controller: controller, children: [
          Appointment(),
          Appointment(),
          Appointment(),

          // Center(child: Text("Tab 1 Content"),),
          //  Center(child: Text("Tab 2 Content"),),
          //   Center(child: Text("Tab 3 Content"),),
        ]),
      );
}
