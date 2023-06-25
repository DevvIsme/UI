
import 'package:flutter/material.dart';
import 'package:ui2/constants.dart';

class ttcv extends StatelessWidget {
  const ttcv({
    super.key,
    required this.pt,
    required this.tt,
    required this.mau,
  });

  final String tt;
  final Color mau;
  final double pt;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          if (tt == '(Chua dat)')
            Text(
              '${pt}%',
              style: TextStyle(fontSize: Mau.textsize),
            ),
          Text(
            tt,
            style: TextStyle(
                fontSize: Mau.textsize, color: mau, fontWeight: FontWeight.bold),
          ),
        ],
      );
    
  }
}