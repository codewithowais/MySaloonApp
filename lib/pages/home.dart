//Home

import 'package:beautysalon/pages/Bottom/bottm.dart';
import 'package:beautysalon/pages/book.dart';
import 'package:beautysalon/pages/book_appointment_1.dart';
import 'package:beautysalon/variable.dart';
import 'package:beautysalon/widgets/button2.dart';
import 'package:beautysalon/widgets/image_card.dart';
import 'package:beautysalon/widgets/my_column.dart';
import 'package:beautysalon/widgets/our_works.dart';
import 'package:beautysalon/widgets/sidebar.dart';
import 'package:beautysalon/widgets/specialist_column.dart';
import 'package:flutter/material.dart';

import '../uidata.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
              icon: Icon(Icons.short_text, color: Colors.black87),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text(
            "Welcome!",
            style: TextStyle(
              color: UIData.mainColor,
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(),
            margin: EdgeInsets.only(right: 15, top: 15),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(
                "images/profile.jpg",
              ),
            ),
          ),
        ],
      ),
      body: Align(
        child: Container(
          width: screen_size_width,
          height: screen_size_height,
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      "Special Offers",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: screen_size_height * .25,
                    width: screen_size_width,
                    child: ListView.builder(
                        itemCount: cardimages.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * .8,
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.4),
                                        BlendMode.darken),
                                    image: AssetImage(cardimages[index]),
                                    fit: BoxFit.cover)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Look awesome \n & save Some",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    )),
                                SizedBox(height: 15),
                                MyButton2(
                                    btnText: "GET UPTO 50% OFF",
                                    onpressed: () {})
                              ],
                            ),
                          );
                        })),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, UIData.bookPageRoute),
                        child: MyColumn(
                          columnImg: "images/braid.png",
                          columnTxt: "Braids",
                          columnBg: UIData.lightColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, UIData.bookPageRoute),
                        child: MyColumn(
                          columnImg: "images/abuja.png",
                          columnTxt: "Abuja",
                          columnBg: UIData.lighterColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, UIData.bookPageRoute),
                        child: MyColumn(
                          columnImg: "images/blow.png",
                          columnTxt: "Blowdry",
                          columnBg: UIData.lighterColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, UIData.bookPageRoute),
                        child: MyColumn(
                          columnImg: "images/haircut.png",
                          columnTxt: "Haircut",
                          columnBg: UIData.lighterColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, UIData.bookPageRoute),
                        child: MyColumn(
                          columnImg: "images/relaxer.png",
                          columnTxt: "Relaxer",
                          columnBg: UIData.lighterColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, UIData.bookPageRoute),
                        child: MyColumn(
                          columnImg: "images/shampoo.png",
                          columnTxt: "Shampoo",
                          columnBg: UIData.lighterColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, UIData.bookPageRoute),
                        child: MyColumn(
                          columnImg: "images/nail.png",
                          columnTxt: "Manicure",
                          columnBg: UIData.lighterColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, UIData.bookPageRoute),
                        child: MyColumn(
                          columnImg: "images/more.png",
                          columnTxt: "More",
                          columnBg: UIData.lighterColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: screen_size_height * 0.06,
                        width: screen_size_width * 0.85,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Bookapp1()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: UIData.mainColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          child: Text(
                            'Book Your Appointment',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )
                    ]),
                SizedBox(height: 6),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: Text("Hair Specialists",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600))),
                      FlatButton(
                          onPressed: () {},
                          child: Text("View All",
                              style: TextStyle(color: Colors.black54)))
                    ]),
                SizedBox(height: 6),
                Container(
                    height: 230,
                    width: screen_size_width,
                    child: ListView.builder(
                        itemCount: specialistimages.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: <Widget>[
                              Container(
                                width: 120,
                                height: 120,
                                margin: EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                        image:
                                            AssetImage(specialistimages[index]),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 8),
                                width: 120,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(name[index],
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                      SizedBox(height: 4),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.star,
                                                color: UIData.mainColor,
                                                size: 14),
                                            SizedBox(width: 1),
                                            Icon(Icons.star,
                                                color: UIData.mainColor,
                                                size: 14),
                                            SizedBox(width: 1),
                                            Icon(Icons.star,
                                                color: UIData.mainColor,
                                                size: 14),
                                            SizedBox(width: 1),
                                            Icon(Icons.star,
                                                color: UIData.mainColor,
                                                size: 14),
                                            SizedBox(width: 1),
                                            Icon(Icons.star,
                                                color: UIData.lightColor,
                                                size: 14),
                                          ]),
                                      SizedBox(height: 4),
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Icon(Icons.phone,
                                                size: 15,
                                                color: Colors.grey[700]),
                                          ),
                                          SizedBox(width: 2),
                                          Expanded(
                                              child: Text("0722000000",
                                                  style: TextStyle(
                                                      color: Colors.grey[700],
                                                      fontSize: 12)))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        })),
                Row(
                  children: [
                    Text("Our Works",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  height: screen_size_height * 0.02,
                ),
                Container(
                    child: Ourworks(
                        img1: 'images/1.jpg',
                        img2: 'images/2.jpg',
                        name1: 'Stylist',
                        name2: 'HairDresser')),
                SizedBox(
                  height: screen_size_height * 0.02,
                ),
                Container(
                    child: Ourworks(
                        img1: 'images/3.jpg',
                        img2: 'images/4.jpg',
                        name1: 'Stylist',
                        name2: 'HairDresser')),
                SizedBox(
                  height: screen_size_height * 0.02,
                ),
                Container(
                    child: Ourworks(
                        img1: 'images/3.jpg',
                        img2: 'images/4.jpg',
                        name1: 'Stylist',
                        name2: 'HairDresser'))
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
          child: Column(children: [
        Container(
          color: UIData.mainColor,
          height: 150,
          width: 310,
          child: DrawerHeader(
            decoration: BoxDecoration(color: UIData.mainColor),
            child: ListTile(
              tileColor: UIData.mainColor,
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/avator.png'),
              ),
              title: Text(
                "Username@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
        Flexible(
          child: Container(
            height: screen_size_height * 0.8,
            child: Sidebar(),
          ),
        ),
      ])),
      bottomNavigationBar: Navbar(),
    );
  }
}
