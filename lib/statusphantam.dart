// ignore_for_file: must_be_immutable

import 'dart:ffi';

import 'package:flutter/material.dart';

class statuspt extends StatelessWidget {
  const statuspt({
    super.key,
  });

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
            const Row(
              children: [
                Icon(
                  IconData(0xe0ef, fontFamily: 'MaterialIcons'),
                  size: 40,
                  color: Colors.blue,
                ),
                SizedBox(width: 10),
                Expanded(
                    child: Text(
                  'Bai 17: vi tri cua kim loai trong bang tuan hoan va cau tao kim loai',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )),
              ],
            ),
            Divider(
              color: Colors.purple.shade100,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'GV',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Devvisme',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            thanhtt(pt :0,stt: 'M'),
            Row(
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
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Han Hoan Thanh',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '10:00-11:30 23/07/2022',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                //const SizedBox(width: 20),
                SizedBox(
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
                      onPressed: () {},
                      child: const Text(
                        'Bat Dau',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                )
              ],
            )
          ],
        ),
      ),
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
            if (stt=='CD')          
            Stack(
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
                  width: 100*pt/100,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
              ],
            ),  
          ],
        ),
        if (stt=='CD')
        Row(
          children: [
            Text(
              '${pt}% ',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              '(Chua Dat)',
              style: TextStyle(
                fontSize: 15,
                color: Colors.red,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        if (stt=='HH')
         Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sap het han',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      ),
                  )
                ],
              ),
        if (stt=='M')
         Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Moi',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue.shade900,
                      ),
                  )
                ],
              ),
      ],
    );
  }
}
