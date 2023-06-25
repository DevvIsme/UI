
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ui2/constants.dart';

class gvbm extends StatelessWidget {
  gvbm({
    super.key,
  });

  
  var textStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 17, 0, 17),
        decoration: BoxDecoration(
          color: Color(0xFFE4EBFF),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Mau.vien,
            width: 2,
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFCAD7FF),
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                )
              ),
              child: Image.asset('assets/ical.png',fit: BoxFit.cover,height: 30,),
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Toan ',
                      style: textStyle,
                    ),
                   
                  ],
                ),
                Text(
                  'GVCN: Mai Mai',
                  style: TextStyle(
                    color: Mau.textcolor,                    fontSize: 20
                  ),
                ),
              ],
            )
          ],
        ),
      );
    
  }
}
