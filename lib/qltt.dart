import 'package:flutter/material.dart';
import 'package:ui2/gvbm.dart';
import 'package:ui2/statuscv.dart';
import 'package:ui2/statusphantam.dart';

class quanlytientrinh extends StatefulWidget {
  quanlytientrinh({
    super.key,
  });

  @override
  State<quanlytientrinh> createState() => _quanlytientrinhState();
}

class _quanlytientrinhState extends State<quanlytientrinh> {

  var textStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(  
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gvbm(textStyle: textStyle),
          Text('Nhiem Vu Chua Lam', style: textStyle,),
          statuspt(),
        ],
      ),
    );
  }
}

