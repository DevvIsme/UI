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
            SizedBox(width: 10),
            Expanded(
                child: Text(
              'TRƯỜNG THPT ĐOÀN THỊ ĐIỂM HÀ NỘI',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ))
          ],
        ),
        actions: [
          nutbam(bt: Icons.notifications),
          nutbam(bt: IconData(0xe59c, fontFamily: 'MaterialIcons')),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle_outlined,
              size: 40,
              color: Colors.blue,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                IconData(0xe3dc, fontFamily: 'MaterialIcons'),
                size: 40,
                color: Colors.grey,
              )),
        ],
      ),
      body: ListView(
        children: [
          anhmodau(),
          chucnang(),
          //SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: tenlop(),
          ),
          //SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              //height: 1000,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3)]),
              child: quanlytientrinh(),
            ),
          ),
        ],
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
