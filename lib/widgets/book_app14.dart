//ss 1

import 'package:beautysalon/uidata.dart';
import 'package:beautysalon/variable.dart';
import 'package:flutter/material.dart';

class Bookapp14 extends StatelessWidget {
  const Bookapp14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Container(
      height: screen_size_height*0.15,
      width: screen_size_width*1,
      child: ListView.builder(
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(children: [
Image.asset(
              images[index],
              height: screen_size_height * 0.083,
              width: screen_size_width * 0.27,
),
Positioned(
  top: 70,
  left: 25,
  
  child: Text(names[index],style: TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  ),)),
            ],);
            
          }),
    );
  }
}
