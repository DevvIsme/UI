

import 'dart:ui';

import 'package:flutter/material.dart';

class anhnen extends StatelessWidget {
  const anhnen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/anh2.png', fit: BoxFit.cover),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.white.withOpacity(0.6),
                alignment: Alignment.center,
                child: null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}