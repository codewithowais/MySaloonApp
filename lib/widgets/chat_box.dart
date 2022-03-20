import 'package:beautysalon/uidata.dart';
import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  String text;
  bool isFromMe;

   ChatBox({Key? key ,required this.text ,required this.isFromMe}) : super(key: key);

  @override
  Widget build(BuildContext context) {   
        final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;

    
     return Row(
       mainAxisAlignment: isFromMe ? MainAxisAlignment.end :MainAxisAlignment.start,
       children: [
         Container(  
           width:screen_size_width*0.4,
           margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
               padding: EdgeInsets.all(12.0),
         decoration: BoxDecoration(
           color: isFromMe ? UIData.mainColor : Colors.grey.shade200,
           borderRadius:isFromMe ? BorderRadius.only(topLeft: Radius.circular(12.0),topRight:Radius.circular(12.0), bottomLeft: Radius.circular(12.0) ,bottomRight: Radius.circular(0.0))
           :BorderRadius.only(topLeft: Radius.circular(12.0),topRight:Radius.circular(12.0),bottomLeft: Radius.circular(12.0) ,bottomRight: Radius.circular(0.0))
         ),
         child:Text(text) ,
    ),
       ],
     );
  }
}
