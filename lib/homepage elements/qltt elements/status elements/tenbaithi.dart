
import 'package:flutter/material.dart';
import 'package:ui2/constants.dart';

class tenbaithi extends StatelessWidget {
  const tenbaithi({
    super.key,
    required this.tenbai,
  });

  final String tenbai;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
      child: Row(
       children: [
         Image.asset('assets/opbook.png'),
         SizedBox(width: 10),
         Expanded(
             child: Text(
           tenbai,
           style: TextStyle(fontWeight: FontWeight.bold, fontSize: Mau.textsize),
         )),
       ],
              ),
    );
  }
}