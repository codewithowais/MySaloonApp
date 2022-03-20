import 'package:beautysalon/uidata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ourworks extends StatelessWidget {
  String img1;
  String img2;
  String name1;
  String name2;
  Ourworks({
    Key? key,
    required this.img1,
    required this.img2,
    required this.name1,
    required this.name2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: screen_size_height * 0.15,
              width: screen_size_width * 0.42,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(img1), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 32,
                width: screen_size_width * 0.4,
                decoration: BoxDecoration(
                    color: UIData.mainColor,
                    border: Border.all(
                      color: UIData.mainColor,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 55, top: 5),
                  child: Text(
                    name1,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ))
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          children: [
            Container(
              height: screen_size_height * 0.15,
              width: screen_size_width * 0.42,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(img2), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: screen_size_height * 0.01,
            ),
            Container(
                height: 32,
                width: screen_size_width * 0.4,
                decoration: BoxDecoration(
                    color: UIData.mainColor,
                    border: Border.all(
                      color: UIData.mainColor,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, top: 5),
                  child: Text(
                    name2,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ))
          ],
        ),
      ],
    );

    // Container(
    //   child: Row(
    //     children: [
    //       Container(
    // height: screen_size_height * 0.045,
    // width: screen_size_width * 0.45,
    // decoration: BoxDecoration(
    //     color: UIData.mainColor,
    //     border: Border.all(
    //       color: UIData.mainColor,
    //     ),
    //     borderRadius: BorderRadius.all(Radius.circular(11))),
    //           child: Row(
    //             children: [
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 50),
    //                 child: Text(
    //                   name2,
    //                   style: TextStyle(
    //                       color: Colors.white, fontWeight: FontWeight.bold),
    //                 ),
    //               )
    //             ],
    //           )),
    //       SizedBox(
    //         width: screen_size_width * 0.05,
    //       ),

    //     ],
    //   ),
    // );

    //  Row(children: [
    //   Column(children: [
    //     Container(
    //       margin: EdgeInsets.only(top: 10, left: 10),
    //       height: 150,
    //       width: 160,
    //       decoration: BoxDecoration(
    //           borderRadius: BorderRadius.all(Radius.circular(15)),
    //       image:
    //           DecorationImage(image: AssetImage(img1), fit: BoxFit.cover)),
    // ),
    //     Container(
    //       width: 100,
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: <Widget>[
    //           SizedBox(height: 10),
    //           Text('Owais',
    //               maxLines: 1,
    //               overflow: TextOverflow.ellipsis,
    //               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
    //           SizedBox(height: 4),
    //         ],
    //       ),
    //     ),
    //   ]),
    //    Container(
    //       margin: EdgeInsets.only(top: 10, left: 10),
    //       height: 150,
    //       width: 160,
    //       decoration: BoxDecoration(
    //           borderRadius: BorderRadius.all(Radius.circular(15)),
    //           image:
    //               DecorationImage(image: AssetImage(img1), fit: BoxFit.cover)),
    //     ),
    //     Container(
    //       width: 100,
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: <Widget>[
    //           SizedBox(height: 10),
    //           Text('Owais',
    //               maxLines: 1,
    //               overflow: TextOverflow.ellipsis,
    //               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
    //           SizedBox(height: 4),
    //         ],
    //       ),
    //     ),

    // ]);
  }
}
