import 'package:flutter/material.dart';

class InputLabel extends StatefulWidget {
  final String label;
  final String inputPlaceHolder;
  
  const InputLabel({super.key, required this.label, required this.inputPlaceHolder});

  @override
  State<InputLabel> createState() => _InputLabelState();
}

class _InputLabelState extends State<InputLabel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.label,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(25, 25, 27, 1)),),
              SizedBox(
                height: 10,
              ),
              
              TextField(
                decoration: InputDecoration(
                  fillColor: Color.fromRGBO(245, 245, 245, 1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide.none
                  ), 
                  hintText: widget.inputPlaceHolder,
                  contentPadding: EdgeInsets.all(10),
                  ),

              )
            ],
        ),
    );
  }
}