// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ui2/homepage%20elements/qltt%20elements/status%20elements/tenbaithi.dart';
import 'package:ui2/homepage%20elements/qltt%20elements/status%20elements/thanhtt.dart';
import 'package:ui2/constants.dart';
import 'status elements/gvpt.dart';
import 'status elements/hanhoanthanh.dart';

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
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Mau.vien,
              width: 2,
            )),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              tenbaithi(tenbai: tenbai),
              Divider(
                color: Mau.vien,
                thickness: 2,
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
