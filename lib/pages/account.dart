import 'package:beautysalon/pages/Bottom/bottm.dart';
import 'package:flutter/material.dart';

import '../uidata.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UIData.mainColor,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Center(
            child: Text(
              "Account",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.calendar_today,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              child: Container(
                margin: EdgeInsets.only(top: 15),
                height: screen_size_height * 0.16,
                width: screen_size_width * 0.96,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 8,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: UIData.mainColor,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/avator.png'),
                        ),
                      ),
                      SizedBox(
                        width: screen_size_width*0.3,
                      ),
                      CircleAvatar(
                        backgroundColor: UIData.mainColor,
                        radius: 30,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text("Personal Info",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Text(
                    "Edit Your Name",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey.shade300.withOpacity(0.6),
              height: screen_size_height * 0.045,
              width: screen_size_width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'name',contentPadding:  EdgeInsets.only(top: 5,left: 10),
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9.0),
                )),
              ),
            ),
             SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Text(
                    "Edit Your Email",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            Container(
                      color: Colors.grey.shade300.withOpacity(0.6),
              height: screen_size_height * 0.045,
              width: screen_size_width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'name@m.ru',contentPadding:  EdgeInsets.only(top: 5,left: 10),
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9.0),
                )),
              ),
            ),
      
               SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Text(
                    "Edit Your Contact number",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            Container(
                      color: Colors.grey.shade300.withOpacity(0.6),
              height: screen_size_height * 0.045,
              width: screen_size_width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9.0),
                )),
              ),
            ),SizedBox(height: 20,),
            Container(
                        height: screen_size_height * 0.045,
                        width: screen_size_width * 0.9,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => BookPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: UIData.mainColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9)),
                          ),
                          child: Text(
                            'Change Info',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text("Change Password",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
              SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Text(
                    "New Pasword",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            Container(
                      color: Colors.grey.shade300.withOpacity(0.6),
              height: screen_size_height * 0.045,
              width: screen_size_width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                                  hintText: 'Enter New Password',contentPadding:  EdgeInsets.only(top: 5,left: 10),
      
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9.0),
                )),
              ),
            ),
      
             SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Text(
                    "Confirm Pasword",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            Container(
                      color: Colors.grey.shade300.withOpacity(0.6),
              height: screen_size_height * 0.045,
              width: screen_size_width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                                  hintText: 'Enter Confirm Password',contentPadding:  EdgeInsets.only(top: 5,left: 10),
      
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9.0),
                )),
              ),
            ),
            SizedBox(height: 20,),
            Container(
                        height: screen_size_height * 0.045,
                        width: screen_size_width * 0.9,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => BookPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: UIData.mainColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9)),
                          ),
                          child: Text(
                            'Change Password',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
