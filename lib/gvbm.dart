
import 'package:flutter/material.dart';

class gvbm extends StatelessWidget {
  const gvbm({
    super.key,
    required this.textStyle,
  });

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.blue.shade300,
          width: 2,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purple.shade100,
              border: Border.all(
                color: Colors.white,
                width: 3,
              )
            ),
            child: Icon(
              Icons.cast_for_education_outlined,
              size: 30,
              color: Colors.blue,
            ),
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Toan ',
                    style: textStyle,
                  ),
                 
                ],
              ),
              Text(
                'GVCN: Mai Mai',
                style: textStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
