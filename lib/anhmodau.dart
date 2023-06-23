
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class anhmodau extends StatelessWidget {
  const anhmodau({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/anh2.png'), fit: BoxFit.fill)),
      child: Lottie.asset('assets/bot-edu-2.json'),
    );
  }
}