
import 'package:beautysalon/variable.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Container(
      height: screen_size_height*1,
      child: ListView.builder(
          itemCount: sidebar.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: item2[index],
              title: Text(sidebar[index]),
            );
          }
      )
      );
  }
}