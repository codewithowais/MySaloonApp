//ss 1

import 'package:beautysalon/uidata.dart';
import 'package:beautysalon/widgets/checkbox1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Bookapp11 extends StatelessWidget {
  String name;
  String min;
 String money;


   Bookapp11({Key? key , required this.name, required this.min,
   required this.money}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Container(
      height: screen_size_height*0.05,
      width: screen_size_width,
           color: Colors.transparent,
      child: Row(
        children: [
         Text(name,
           maxLines: 1,
           overflow: TextOverflow.ellipsis,
         style: TextStyle(
           color: Colors.black,
             fontWeight: FontWeight.w500,
             fontSize: screen_size_width*0.03
         ),),
          SizedBox(width:screen_size_width*0.4,),
          Text(min,
           maxLines: 1,
              overflow: TextOverflow.ellipsis,
           style: TextStyle(
            color: UIData.mainColor,
      fontWeight: FontWeight.bold,
      fontSize: screen_size_width*0.02
      
          ),),
          SizedBox(width:screen_size_width*0.01
          ,),
          Text(money ,
           maxLines: 1,
              overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: screen_size_width*0.02
      
          ),),
          SizedBox(width: screen_size_width*0.04,),
          checkbox1(),
        ],
      ),
    );
  }
}
