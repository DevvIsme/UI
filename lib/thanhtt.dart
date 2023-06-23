

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ui2/ttcv.dart';

class thanhtt extends StatelessWidget {
  thanhtt({
    super.key,
    required this.pt,
    required this.stt,
  });

  double pt;
  String stt;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Trang thai',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(width: 35),
            if (stt == 'CD')
              percentbar(pt: pt),
          ],
        ),
        if (stt == 'CD') ttcv(pt: pt, tt: 'Chua dat', mau: Colors.red,),
        if (stt == 'HH') ttcv(pt: pt, tt: 'Sap het han', mau: Colors.red,),
        if (stt == 'M') ttcv(pt: pt, tt: 'Moi', mau: Colors.blue,),
        if (stt == 'HT') ttcv(pt: pt, tt: 'Hoan Thanh',mau: Colors.blue,),
        if (stt == 'Q') ttcv(pt: pt, tt: 'Quen chua lam', mau: Colors.red,),
      ],
    );
  }
}


class percentbar extends StatelessWidget {
  const percentbar({
    super.key,
    required this.pt,
  });

  final double pt;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: 100 * pt / 100,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
        )
      ],
    );
  }
}
