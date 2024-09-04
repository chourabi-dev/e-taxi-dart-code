import 'package:flutter/material.dart';

class BlocStarValue extends StatelessWidget {
  final String label;
  final String value;
  
  const BlocStarValue({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
        children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                 color: Colors.black,
              ),
             
              child: Center(
                child: Icon(Icons.star,color: Colors.white,),
              ),
            ), 
            SizedBox(width: 15,),
            Text(value, style: TextStyle(fontSize: 17),)
        ],
      ),


      SizedBox(width: 15,),
      Text(label, style: TextStyle(fontSize: 15),)



        ],
      )
    );
  }
}