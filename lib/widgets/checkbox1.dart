import 'package:beautysalon/uidata.dart';
import 'package:beautysalon/variable.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';

class checkbox1 extends StatefulWidget {
  const checkbox1({ Key? key }) : super(key: key);

  @override
  _checkbox1State createState() => _checkbox1State();
}

class _checkbox1State extends State<checkbox1> {
  @override
  Widget build(BuildContext context) {
     final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Container(
      height: screen_size_height*0.025,
      width: screen_size_width*0.05,
      child: GFCheckbox(
        size: GFSize.SMALL,
        activeBgColor: UIData.mainColor,
        inactiveBorderColor: UIData.mainColor,
        type: GFCheckboxType.square,
        onChanged: (value) {
          setState(() {
            ischecked = value;
          });
        },
        value: ischecked,
        inactiveIcon: null,
      ),
    );
  }
}