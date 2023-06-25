// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:ui2/appbar%20elements/nutbam.dart';
import 'package:ui2/appbar%20elements/nutbamdep.dart';
import 'package:ui2/homepage%20elements/qltt.dart';
import 'package:ui2/homepage%20elements/tenlop.dart';

import 'homepage elements/anhmodau.dart';
import 'homepage elements/chucnang.dart';
import 'constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/icon.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            const SizedBox(width: 10),
            const Expanded(
                child: Text(
              'TRƯỜNG THPT ĐOÀN THỊ ĐIỂM HÀ NỘI',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: Mau.textsize),
            ))
          ],
        ),
        actions: <Widget> [
          nutbam(anh: Image.asset('assets/ibell.png',fit: BoxFit.fill,height: 100,)),
          nutbam(anh: Image.asset('assets/icart.png',fit: BoxFit.fill,height: 100,),),
          nutbamdep(bt: Icons.account_circle_outlined,mau: Color(0xFF005FD0)),
          nutbamdep(bt: IconData(0xe3dc, fontFamily: 'MaterialIcons'),mau: Colors.grey),
        ],
      ),
      body: ListView(
        children: [
          const anhmodau(),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                chucnang(),
                tenlop(),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 3)]),
              child: quanlytientrinh(),
            ),
          ),
        ],
      ),
    );
  }
}

