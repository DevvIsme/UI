// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ui2/tenbaithi.dart';
import 'package:ui2/thanhtt.dart';

import 'gvpt.dart';
import 'hanhoanthanh.dart';

class statuspt extends StatelessWidget {
  statuspt({
    super.key,
    required this.stt,
    required this.pt,
    required this.tenbai,
    required this.ngay,
    required this.gv,
  });

  String stt;
  double pt;
  String ngay;
  String gv;
  String tenbai;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.purple.shade100,
              width: 1,
            )),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              tenbaithi(tenbai: tenbai),
              Divider(
                color: Colors.purple.shade100,
              ),
              gvpt(gv: gv),
              thanhtt(pt: pt, stt: stt),
              hanhoanthanh(ngay: ngay, stt: stt),            
    
            ],
          ),
        ),
      ),
    );
  }
}
