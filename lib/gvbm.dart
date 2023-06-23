
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.blue.shade300,
            width: 2,
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purple.shade100,
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                )
              ),
              child: Icon(
                Icons.cast_for_education_outlined,
                size: 30,
                color: Colors.blue,
              ),
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
                  style: textStyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
