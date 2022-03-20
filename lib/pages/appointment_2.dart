import 'package:beautysalon/pages/Bottom/bottm.dart';
import 'package:beautysalon/uidata.dart';
import 'package:flutter/material.dart';

class Appointment2 extends StatefulWidget {
  const Appointment2({Key? key}) : super(key: key);

  @override
  _Appointment2State createState() => _Appointment2State();
}

class _Appointment2State extends State<Appointment2>
    with SingleTickerProviderStateMixin {
  @override
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

  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: UIData.mainColor,
      //   leading: Icon(
      //     Icons.menu,
      //     color: UIData.lightColor,
      //   ),
      //   title: Padding(
      //     padding: const EdgeInsets.only(right: 5),
      //     child: Center(
      //       child: Text(
      //         "Appointment",
      //         style: TextStyle(color: UIData.lightColor),
      //       ),
      //     ),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 15),
      //       child: Icon(
      //         Icons.messenger_outline,
      //         color: UIData.lightColor,
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(right: 10),
      //       child: Icon(
      //         Icons.calendar_today,
      //         color: UIData.lightColor,
      //       ),
      //     ),
      //   ],
      // ),

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
      body: SingleChildScrollView(
          child: Column(
        children: [
          // Container(
          //   margin: EdgeInsets.only(top: 10),
          //   child: Row(
          //     children: [
          //       SizedBox(
          //         width: 20,
          //       ),
          //       Text(
          //         'Upcoming',
          //         style: TextStyle(
          //           color: Colors.grey,
          //           fontSize: 16,
          //         ),
          //       ),
          //       SizedBox(width:5),
          //       Text(
          //         "Completed",
          //         style: TextStyle(
          //           color: Colors.grey,
          //           fontSize: 16,
          //         ),
          //       ),
          //        SizedBox(width:7),
          //       Text(
          //         "Canceled",
          //         style: TextStyle(
          //           color: Colors.grey,
          //           fontSize: 16,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Container(
          //   margin: EdgeInsets.only(right: 260),
          //   child: Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 10.0),
          //     child: Container(
          //       height: screen_size_height * 0.002,
          //       width: screen_size_width * 0.4,
          //       color: UIData.mainColor,
          //     ),
          //   ),
          // ),
          Container(
            height: screen_size_height * 1,
            child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Align(
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
                                    "Jessica",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "\$20.00",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Not Paid",
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
                                  "Children's Cut & Style",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              SizedBox(
                                width: screen_size_width * 0.15,
                              ),
                              Text(
                                "2021.06.01",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Text(
                                  "Your Time:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              SizedBox(
                                width: screen_size_width * 0.39,
                              ),
                              Text(
                                "12:40-13:10",
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
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                  height: 30,
                                  width: screen_size_width * 0.3,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: UIData.mainColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                      ),
                                      child: Text("Cancel"))),
                              SizedBox(
                                width: 40,
                              ),
                              Container(
                                  height: 30,
                                  width: screen_size_width * 0.3,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: UIData.mainColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                      ),
                                      child: Text("Complete"))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ));
                }),
          )
        ],
      )),
      bottomNavigationBar: Navbar(),
    );
  }
}
