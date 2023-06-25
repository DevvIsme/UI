import 'package:flutter/material.dart';

import '../../../constants.dart';

class gvpt extends StatelessWidget {
  const gvpt({
    super.key,
    required this.gv,
  });

  final String gv;

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Text(
         'GV',
         style: TextStyle(
          fontSize: Mau.textsize,
          color: Mau.textcolor,          ),
       ),
       Text(
         gv,
         style: TextStyle(
          fontSize: Mau.textsize
          ),
       )
     ],
            );
  }
}