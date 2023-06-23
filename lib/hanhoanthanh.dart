  import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.all(10),
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
                style: TextStyle(fontSize: 18),
              ),
              Text(
                ngay,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
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