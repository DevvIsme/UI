
import 'package:flutter/material.dart';
import 'package:ui2/constants.dart';

class nutbatdau extends StatelessWidget {
  const nutbatdau({
    super.key,
    required this.stt,
  });

  final String stt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 61,
      width: 120,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(15),
            primary: Mau.btnbd,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: (stt == 'Q') ? null : () {},
          child: const Text(
            'Bat Dau',
            style: TextStyle(
                fontSize: Mau.textsize, fontWeight: FontWeight.bold),
          )),
    );
  }
}