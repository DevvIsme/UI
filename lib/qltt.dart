// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ui2/gvbm.dart';
import 'package:ui2/statusphantam.dart';

class quanlytientrinh extends StatefulWidget {
  quanlytientrinh({
    super.key,
  });

  @override
  State<quanlytientrinh> createState() => _quanlytientrinhState();
}

class _quanlytientrinhState extends State<quanlytientrinh> {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(  
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gvbm(),
          tendemuc(demuc: 'Nhiem vu Chua lam'),
          statuspt(stt: 'HH', pt: 0, tenbai: 'Bai 1: Hello', ngay: '11h-12h30 17/7/2077', gv: 'Devvisme'),
          statuspt(stt: 'M', pt: 0, tenbai: 'Bai 2: Ritan', ngay: '13h-14h30 12/5/2023', gv: 'Sita'),
          tendemuc(demuc: 'Nhiem vu Da lam/Dang thuc hien'),
          statuspt(stt: 'CD', pt: 60, tenbai: 'Bai 3: Sita', ngay: '13h-14h30 12/5/2023', gv: 'Rita'),          
          statuspt(stt: 'HT', pt: 20, tenbai: 'Bai 4: Richa', ngay: '13h-14h30 12/5/2023', gv: 'Raucha'),
          tendemuc(demuc: 'Nhiem vu Qua han'),
          statuspt(stt: 'Q', pt: 60, tenbai: 'Bai 7: vi tri cua kim loai trong bang tuan hoan va cau tao', ngay: '13h-14h30 12/5/2023', gv: 'tao')
        ],
      ),
    );
  }
}

class tendemuc extends StatelessWidget {
  tendemuc({
    super.key,
    required this.demuc,
  });

  final String demuc;

  var textStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
      child: Text(demuc, style: textStyle,),
    );
  }
}

