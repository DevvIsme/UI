import 'package:flutter/material.dart';
import 'package:ui2/constants.dart';

import 'nutbatdau.dart';

class hanhoanthanh extends StatelessWidget {
  const hanhoanthanh({
    super.key,
    required this.ngay,
    required this.stt,
  });

  final String ngay;
  final String stt;
@override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Han Hoan Thanh',
                style: TextStyle(
                  fontSize: Mau.textsize, 
                  color: Mau.textcolor,                  ),
              ),
              Text(
                ngay,
                style: TextStyle(
                    fontSize: Mau.textsize,
                    color: Mau.btnbd,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        nutbatdau(stt: stt)
      ],
    );
  }
}