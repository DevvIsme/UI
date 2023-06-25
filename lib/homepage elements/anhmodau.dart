import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ui2/homepage%20elements/anhmodau%20elements/anhnen.dart';
import 'package:ui2/homepage%20elements/anhmodau%20elements/text.dart';
import 'package:ui2/homepage%20elements/anhmodau%20elements/tieudechon.dart';

class anhmodau extends StatelessWidget {
  const anhmodau({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      anhnen(),
      Positioned(
        top: 140,
        child: Lottie.asset('assets/bot-edu-2.json',height: 370,fit: BoxFit.fill),
      ),
      tieudechon(),
      text(),
     
    ]);
  }
}


