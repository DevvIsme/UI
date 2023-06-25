

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class text extends StatelessWidget {
  const text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
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

// ignore: camel_case_types
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
