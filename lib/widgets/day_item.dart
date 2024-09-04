import 'package:flutter/material.dart';

class DateItem extends StatelessWidget {
  final bool active;
  const DateItem({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
                            margin: EdgeInsets.only(right: 15),
                            width: 51,
                            height: 66,
                            child: Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("MON", style: TextStyle(fontSize:  17, fontWeight: active ?  FontWeight.w600 : FontWeight.w400 , color: active ? Color.fromRGBO(22, 22, 22, 1)  : Color.fromRGBO(175, 177, 182, 1)) ,),
                                  Text("09", style: TextStyle(fontSize: 17, fontWeight: active ? FontWeight.w600 : FontWeight.w400, color: active ? Color.fromRGBO(22, 22, 22, 1)  : Color.fromRGBO(175, 177, 182, 1))),
                                  
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: active ? Color.fromRGBO(255, 179, 0, 1)  : Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              
                            )
                          );
                          
  }
}