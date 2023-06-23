import 'package:flutter/material.dart';

class statuscv extends StatelessWidget {
  const statuscv({
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
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ) ,
                )),
              ],
            ),
              Divider(
                color: Colors.purple.shade100,
              ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('GV',style: TextStyle(fontSize: 20),),
                  Text('Devvisme',style: TextStyle(fontSize: 20),)
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Trang thai',style: TextStyle(fontSize: 20),),
                  Text('Sap het han',style: TextStyle(fontSize: 20),)
                ],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Han Hoan Thanh',style: TextStyle(fontSize: 18),),
                        Text('10:00-11:30 23/07/2022',style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                       shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
                      padding: EdgeInsets.all(20),
                      primary: Colors.blueAccent,
                      onPrimary: Colors.white,                    
                    ),
                    onPressed: () {}, 
                    child: Text('Bat Dau',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    ))
                ],
              )  
          ],
        ),
      ),
    );
  }
}
