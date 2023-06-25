
import 'package:flutter/material.dart';
import 'package:ui2/constants.dart';

class tieudechon extends StatelessWidget {
  const tieudechon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: 400,
      child: Align(
       alignment: Alignment.bottomCenter,
        child: Container(
             decoration: BoxDecoration(
               color: Mau.btnbd.withOpacity(0.20000000298023224),
             ),
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                   child: Text(
                     'NHIEM VU',
                     style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold
                     ),
                     ),
                 ),
               ],
             )
             ),
      ),
    );
  }
}