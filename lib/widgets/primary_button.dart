import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final dynamic function;
  final String text;
  const PrimaryButton({super.key, this.function, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: GestureDetector(
      onTap: (){
        function();
      },
      child: Container(
       // width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 179, 0, 1),
           
          
          borderRadius: BorderRadius.circular(18)
        ),
        child: Text(text, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black, ),),
      ),
    )
    );

  }
}