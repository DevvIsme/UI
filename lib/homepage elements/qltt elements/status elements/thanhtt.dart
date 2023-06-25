// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ui2/constants.dart';
import 'package:ui2/homepage%20elements/qltt%20elements/status%20elements/ttcv.dart';

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
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: 195,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                    'Trang thai',
                    style: TextStyle(
                      fontSize: Mau.textsize,
                      color: Mau.textcolor,                    ),
                  ),
                 
    
           if (stt == 'CD') percentbar(pt: pt),
              ],
            ),
          ),
                  
          if (stt == 'CD')
            ttcv(
              pt: pt,
              tt: '(Chua dat)',
              mau: Colors.red,
            ),
          if (stt == 'HH')
            ttcv(
              pt: pt,
              tt: 'Sap het han',
              mau: Colors.red,
            ),
          if (stt == 'M')
            ttcv(
              pt: pt,
              tt: 'Moi',
              mau: Colors.blue,
            ),
          if (stt == 'HT')
            ttcv(
              pt: pt,
              tt: 'Hoan Thanh',
              mau: Colors.blue,
            ),
          if (stt == 'Q')
            ttcv(
              pt: pt,
              tt: 'Quen chua lam',
              mau: Colors.red,
            ),
        ],
      ),
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
          width: 50,
          height: 8,
          decoration: BoxDecoration(
            color: Color(0xFFDADEF2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          width: 50 * pt / 100,
          height: 8,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),
        )
      ],
    );
  }
}
