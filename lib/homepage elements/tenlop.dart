import 'package:flutter/material.dart';
import 'package:ui2/constants.dart';

class tenlop extends StatelessWidget {
  const tenlop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: Mau.textsize,
                  );
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        
        Container(    
          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
          decoration: BoxDecoration(      
            color: Color(0xFFDD7426),
            borderRadius: BorderRadius.circular(10),
          ),    
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon( Icons.cast_for_education_outlined,
                size: 40,
                color: Colors.white ,
              ),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Lop 10A'
                      ,style: textStyle,),
                      SizedBox(width: 10),
                      Text('|',style: textStyle,),
                      SizedBox(width: 10),
                      Text('Si so: 34 Hoc Sinh',style: textStyle,)
                    ],
                  ),
                  Text('GVCN: Mai Mai',style: textStyle,),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}