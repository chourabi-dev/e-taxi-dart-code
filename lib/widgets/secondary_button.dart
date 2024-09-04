import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final dynamic function;
  final String text;
  const SecondaryButton({super.key, this.function, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: GestureDetector(
      onTap: (){
        function();
      },
      child: Container(
       
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color.fromRGBO(175, 177, 182, 1), 

          
          
          borderRadius: BorderRadius.circular(18)
        ),
        child:   Text(text, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white, ),),
      ),
    ));

  }
}