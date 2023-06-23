import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
        top: 150,
        left: 50,
        child: Lottie.asset('assets/bot-edu-2.json'),
      ),
       SizedBox(
          height: 400,
         child: Align(
          alignment: Alignment.bottomCenter,
           child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade50.withOpacity(0.9),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
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
       ),
      text(),
     
    ]);
  }
}

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

class text extends StatelessWidget {
  const text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titlegt(
              title:
                  'Chao mung ban den voi he thong day hoc truc tuyen (vnEdu LMS) cua',
              size: 20),
          titlegt(title: 'Truong THPT Doan Thi Diem', size: 25),
          
        ],
      ),
    );
  }
}

class titlegt extends StatelessWidget {
  titlegt({
    super.key,
    required this.title,
    required this.size,
  });

  String title;
  double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(shadows: [
        Shadow(
          blurRadius: 10.0, // shadow blur
          color: Colors.white, // shadow color
          offset: Offset(2.0, 2.0), // how much shadow will be shown
        ),
      ], fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
