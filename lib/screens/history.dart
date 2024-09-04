import 'package:etaxi/widgets/day_item.dart';
import 'package:etaxi/widgets/ride_history.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: [
          
          SizedBox(height: 46,),
          Text("History", textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
          SizedBox( height: 26,),

          Expanded(child: Container(
            width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 17, right: 20, left: 20),
               decoration: BoxDecoration(
                 color: Color.fromRGBO(245, 245, 245, 1),
                borderRadius: BorderRadius.only( topLeft: Radius.circular(15), topRight: Radius.circular(15))
                
               ),



               child: Column(
                children: [
                  // days bloc
                  Container(
                    height: 66,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [ 
                        DateItem(active: false,),
                        DateItem(active: false,),
                        DateItem(active: false,),
                        DateItem(active: true,),
                        DateItem(active: false,),
                        DateItem(active: false,),
                        DateItem(active: false,),
                        DateItem(active: false,),
                        
                        
                          

                      ]
                    ),
                  ),


                  // title
                  SizedBox(
                    height: 45,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text("Rides", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
                  ), 
                  // bloc 
                  RideHistory()
                  // histroy
                ],
               )
            )
          ),



        ],
      ),
    ),
    );

  }
}