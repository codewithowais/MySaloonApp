import 'package:beautysalon/variable.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';

import '../uidata.dart';

class checkbox extends StatefulWidget {
 
  const checkbox({ Key? key }) : super(key: key);

  @override
  _checkboxState createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  @override
  Widget build(BuildContext context) {
    return GFCheckbox(
      size: GFSize.SMALL,
      activeBgColor: UIData.mainColor,
      type: GFCheckboxType.circle,
      onChanged: (value) {
        setState(() {
          ischecked = value;
        });
      },
      value: ischecked,
      inactiveIcon: null,
    );
  }
}