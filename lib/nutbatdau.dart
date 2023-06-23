
import 'package:flutter/material.dart';

class nutbatdau extends StatelessWidget {
  const nutbatdau({
    super.key,
    required this.stt,
  });

  final String stt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 120,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(15),
            primary: Colors.blueAccent,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: (stt == 'Q') ? null : () {},
          child: const Text(
            'Bat Dau',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold),
          )),
    );
  }
}