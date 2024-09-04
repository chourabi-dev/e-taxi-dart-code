import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final dynamic function;
  final String text;
  const CustomButton({super.key, this.function, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        function();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color.fromRGBO(25, 25, 27, 1),
          
          
          borderRadius: BorderRadius.circular(18)
        ),
        child: Text(text, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white, ),),
      ),
    );

  }
}