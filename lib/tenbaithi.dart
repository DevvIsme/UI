
import 'package:flutter/material.dart';

class tenbaithi extends StatelessWidget {
  const tenbaithi({
    super.key,
    required this.tenbai,
  });

  final String tenbai;

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Icon(
         IconData(0xe0ef, fontFamily: 'MaterialIcons'),
         size: 40,
         color: Colors.blue,
       ),
       SizedBox(width: 10),
       Expanded(
           child: Text(
         tenbai,
         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
       )),
     ],
            );
  }
}