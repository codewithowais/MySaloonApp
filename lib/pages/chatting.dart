import 'package:beautysalon/helper/stoarage_helper.dart';
import 'package:beautysalon/pages/profile.dart';
import 'package:beautysalon/uidata.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Chat extends StatefulWidget {
  const Chat(
      {Key? key,
      @required this.sendto,
      @required this.currentuseremail,
      @required this.sendtoemail,
      @required this.chatRoom,
      @required this.profile})
      : super(key: key);
  final sendto;
  final currentuseremail;
  final sendtoemail;
  final chatRoom;
  final profile;
  @override
  _ChatState createState() => _ChatState();
}

bool selectuser = true;

TextEditingController msg = TextEditingController();

addData(sender, receiver, chatRoom) async {
  await FirebaseFirestore.instance
      .collection("chatRoom")
      .doc(chatRoom)
      .collection("Chats")
      .add({
    'currentemail': sender,
    'senttoemail': receiver,
    'message': msg.text,
    'time': DateTime.now().millisecondsSinceEpoch,
  });
  msg.clear();
}

a(timeInMillis) {
  var date = DateTime.fromMillisecondsSinceEpoch(timeInMillis);
  var formattedDate = DateFormat.yMMMd().format(date);
  var formattedtime = DateFormat.Hm().format(date);
  return "${formattedtime}";
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("chatRoom")
                    .doc('${widget.chatRoom}')
                    .collection("Chats")
                    .orderBy("time")
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Image(
                      image: AssetImage("assets/images/run.gif"),
                    );
                  }

                  return ListView(
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                      Map<String, dynamic> data =
                          document.data()! as Map<String, dynamic>;
                      if ('${data['currentemail']}' ==
                          "${widget.currentuseremail}") {
                        selectuser = true;
                      } else {
                        selectuser = false;
                      }
                      return Column(children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * 0.05,
                            left: selectuser
                                ? MediaQuery.of(context).size.width * 0.25
                                : MediaQuery.of(context).size.width * 0.05,
                            right: selectuser
                                ? MediaQuery.of(context).size.width * 0.05
                                : MediaQuery.of(context).size.width * 0.25,
                          ),
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).size.width * 0.01,
                              right: MediaQuery.of(context).size.width * 0.01,
                              top: MediaQuery.of(context).size.width * 0.05),
                          decoration: BoxDecoration(
                            color: selectuser ? UIData.mainColor : Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          width: MediaQuery.of(context).size.width * 0.90,
                          child: Container(
                            padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * 0.01,
                                left: MediaQuery.of(context).size.width * 0.05),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: '${data['message']}',
                                    style: TextStyle(
                                        color: selectuser
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18.0),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.library_add_check_outlined,
                                      size: 15,
                                      color: selectuser
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    Text(" ${a(data['time'])}",
                                        style: TextStyle(
                                            color: selectuser
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 13.0)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]);
                    }).toList(),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.width * 0.03,
                  top: MediaQuery.of(context).size.width * 0.03),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                    ),
                    width: MediaQuery.of(context).size.width * 0.78,
                    child: TextField(
                        controller: msg,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(25.7)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(25.7)),
                            suffixIcon: Icon(
                              Icons.mic,
                              color: UIData.mainColor,
                            ),
                            hintText: 'Type a message',
                            prefixIcon: Icon(
                              Icons.face,
                              color: UIData.mainColor,
                            ))),
                  ),
                  InkWell(
                    onTap: () {},
                    child: InkWell(
                      onTap: () {
                        if (msg.text != "") {
                          addData("${widget.currentuseremail}",
                              "${widget.sendtoemail}", "${widget.chatRoom}");
                        }
                      },
                      child: CircleAvatar(
                        backgroundColor: UIData.mainColor,
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
