// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:ui2/qltt.dart';
import 'package:ui2/tenlop.dart';

import 'anhmodau.dart';
import 'chucnang.dart';

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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ))
          ],
        ),
        actions: const [
          nutbam(bt: Icons.notifications),
          nutbam(bt: IconData(0xe59c, fontFamily: 'MaterialIcons')),
          nutbamdep(bt: Icons.account_circle_outlined,mau: Colors.blue),
          nutbamdep(bt: IconData(0xe3dc, fontFamily: 'MaterialIcons'),mau: Colors.grey),
        ],
      ),
      body: ListView(
        children: [
          const anhmodau(),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
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

class nutbamdep extends StatelessWidget {
  const nutbamdep({
    super.key,
    required this.bt,
    required this.mau,
  });

  final IconData bt;
  final Color mau;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        bt,
        size: 40,
        color: mau,
      ),
    );
  }
}

class nutbam extends StatelessWidget {
  const nutbam({
    super.key,
    required this.bt,
  });

  final IconData bt;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Container(
        decoration:
            BoxDecoration(color: Colors.blue.shade100, shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Icon(
            bt,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
