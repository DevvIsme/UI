// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

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
    return Container(
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
            hanhoanthanh(ngay: ngay, stt: stt)
          ],
        ),
      ),
    );
  }
}

class tenbaithi extends StatelessWidget {
  const tenbaithi({
    super.key,
    required this.tenbai,
  });

  final String tenbai;

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Icon(
         IconData(0xe0ef, fontFamily: 'MaterialIcons'),
         size: 40,
         color: Colors.blue,
       ),
       SizedBox(width: 10),
       Expanded(
           child: Text(
         tenbai,
         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
       )),
     ],
            );
  }
}

class gvpt extends StatelessWidget {
  const gvpt({
    super.key,
    required this.gv,
  });

  final String gv;

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Text(
         'GV',
         style: TextStyle(fontSize: 20),
       ),
       Text(
         gv,
         style: TextStyle(fontSize: 20),
       )
     ],
            );
  }
}

class hanhoanthanh extends StatelessWidget {
  const hanhoanthanh({
    super.key,
    required this.ngay,
    required this.stt,
  });

  final String ngay;
  final String stt;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Han Hoan Thanh',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                ngay,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        nutbatdau(stt: stt)
      ],
    );
  }
}

class nutbatdau extends StatelessWidget {
  const nutbatdau({
    super.key,
    required this.stt,
  });

  final String stt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 120,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(15),
            primary: Colors.blueAccent,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: (stt == 'Q') ? null : () {},
          child: const Text(
            'Bat Dau',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold),
          )),
    );
  }
}

class thanhtt extends StatelessWidget {
  thanhtt({
    super.key,
    required this.pt,
    required this.stt,
  });

  double pt;
  String stt;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Text(
              'Trang thai',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(width: 35),
            if (stt == 'CD')
              percentbar(pt: pt),
          ],
        ),
        if (stt == 'CD') ttcv(pt: pt, tt: 'Chua dat'),
        if (stt == 'HH') ttcv(pt: pt, tt: 'Sap het han'),
        if (stt == 'M') ttcv(pt: pt, tt: 'Moi'),
        if (stt == 'Q') ttcv(pt: pt, tt: 'Quen chua lam'),
      ],
    );
  }
}

class percentbar extends StatelessWidget {
  const percentbar({
    super.key,
    required this.pt,
  });

  final double pt;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: 100 * pt / 100,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
        )
      ],
    );
  }
}

class ttcv extends StatelessWidget {
  const ttcv({
    super.key,
    required this.pt,
    required this.tt,
  });

  final String tt;

  final double pt;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (tt == 'Chua dat')
          Text(
            '${pt}% ',
            style: TextStyle(fontSize: 15),
          ),
        Text(
          tt,
          style: TextStyle(
              fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
