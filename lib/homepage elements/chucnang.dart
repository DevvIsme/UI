import 'package:flutter/material.dart';

class chucnang extends StatelessWidget {
  const chucnang({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 50,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Row(
          children: [
            thebam(nd: 'Nhiem Vu'),
            SizedBox(width: 10),
            thebam(nd: 'Nhiem Vu'),
            SizedBox(width: 10),
            thebam(nd: 'Nhiem Vu'),
            SizedBox(width: 10),
            thebam(nd: 'Nhiem Vu'),
            SizedBox(width: 10),
          ],
        ),
      ]),
    );
  }
}


class thebam extends StatelessWidget {
  const thebam({
    super.key,
    required this.nd,
  });

  final String nd;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {  },
        style: TextButton.styleFrom(
          side: BorderSide(width: 1, color: Colors.black),
          primary: const Color.fromARGB(255, 14, 85, 190),
          onSurface: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        ),
        child: Text(
          nd,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      );

  }
}