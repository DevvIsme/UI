import 'package:flutter/material.dart';

class nutbamdep extends StatelessWidget {
  const nutbamdep({
    super.key,
    required this.bt,
    required this.mau,
  });

  final IconData bt;
  final Color mau;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        bt,
        size: 35,
        color: mau,
      ),
    );
  }
}
