import 'package:beautysalon/models/messages.dart';
import 'package:beautysalon/pages/Bottom/bottm.dart';
import 'package:beautysalon/uidata.dart';
import 'package:beautysalon/widgets/chat_box.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Message;
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: UIData.mainColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(arg.user),
          ))),
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: ListView(
            reverse: true,
            children: [
              ChatBox(text: "Helloooo", isFromMe: true
              ),
              ChatBox(text: "Heyyy", isFromMe: false),
               ChatBox(text: "kheriat?", isFromMe: true
              ),
              ChatBox(text: "Settt.", isFromMe: false),
              


            ],
          )),
          Container(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(child:TextField(
decoration: InputDecoration(
  filled: true,
  fillColor:Colors.grey.shade200,
  border: InputBorder.none,
  hintText: "Type Something......"
),

                ) ,
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.send,color: UIData.mainColor,))
              ],
            ),
          )
        ],

      ),
      
      // Stack(children: [
      //   Positioned(
      //       top: 15,
      //       left: 300,
      //       child: Container(
      //         child: Row(children: [
      //           Text("01:24"),
      //           Container(
      //             height: screen_size_height * 0.04,
      //             width: screen_size_width * 0.15,
      //             decoration: BoxDecoration(
      //                 color: UIData.mainColor,
      //                 borderRadius: BorderRadius.all(Radius.circular(9))),
      //             child: Center(child: Text("Hello")),
      //           )
      //         ]),
      //       )),
      //   Positioned(
      //       top: 65,
      //       right: 300,
      //       child: Container(
      //         child: Row(children: [
      //           Text("01:24"),
      //           Container(
      //             height: screen_size_height * 0.04,
      //             width: screen_size_width * 0.15,
      //             decoration: BoxDecoration(
      //                 color: UIData.mainColor,
      //                 borderRadius: BorderRadius.all(Radius.circular(9))),
      //             child: Center(child: Text("Hello")),
      //           )
      //         ]),
      //       )),
      //   Positioned(
      //       top: 670,
      //       left: -1,
      //       height: screen_size_height * 0.06,
      //       width: screen_size_width * 2,
      //       child: Container(
      //         // height: screen_size_height*0.05,
      //         // width: screen_size_width*0.99,
      //         color: UIData.mainColor,
      //         child: Row(children: [
      //           Padding(
      //             padding: const EdgeInsets.only(left: 10),
      //             child: Container(
      //               width: screen_size_width * 0.3,
      //               child: TextField(
      //                 decoration:
      //                     InputDecoration(hintText: "Type Your Message"),
      //               ),
      //             ),
      //           ),
      //           Container(
      //             margin: EdgeInsets.only(left: 240),
      //             child: CircleAvatar(
      //                 backgroundColor: UIData.mainColor,
      //                 child: Icon(Icons.send, color: UIData.lightColor)),
      //           )
      //         ]),
      //       )),
      // ]),
     
    );
  }
}
