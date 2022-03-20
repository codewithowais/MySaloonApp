import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../uidata.dart';

class Bookapp15 extends StatelessWidget {
  String name1;
  String name2;
  Bookapp15({Key? key, required this.name1, required this.name2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Container(
      child: Row(
        children: [
          Container(
              height: 25,
              width: screen_size_width * 0.45,
              decoration: BoxDecoration(
                  color: UIData.mainColor,
                  border: Border.all(
                    color: UIData.mainColor,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(11))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                                    Text(
                                      name2,
                                      style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold),
                                    )
                ],
              )),
          SizedBox(
            width: 10,
          ),
          Container(
              height:  25,
              width: screen_size_width * 0.45,
              decoration: BoxDecoration(
                  color: UIData.mainColor,
                  border: Border.all(
                    color: UIData.mainColor,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(11))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                              name2,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
