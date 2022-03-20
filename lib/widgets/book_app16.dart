import 'package:flutter/material.dart';

import '../uidata.dart';

class Bookapp16 extends StatelessWidget {
  const Bookapp16({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: screen_size_height*0.05,
          width: screen_size_width*0.96,
        
        decoration: BoxDecoration(
        border: Border.all(
          color: UIData.mainColor,
        ),
        borderRadius: BorderRadius.all(Radius.circular(9))
        ),
        child: Row(
        children: [
          Text("   Hair Cutting"),
          SizedBox(width: screen_size_width*0.66,),
          Icon(Icons.remove,color: UIData.mainColor,size: 27,),
        ],
        )
        ),
        
      ],
    );
  }
}