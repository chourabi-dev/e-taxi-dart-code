import 'package:etaxi/widgets/balance_card.dart';
import 'package:etaxi/widgets/car_card.dart';
import 'package:etaxi/widgets/driver_card.dart';
import 'package:etaxi/widgets/dropdown.dart';
import 'package:flutter/material.dart';

class SoldeTab extends StatefulWidget {
  const SoldeTab({super.key});

  @override
  State<SoldeTab> createState() => _SoldeTabState();
}

class _SoldeTabState extends State<SoldeTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: [
          
          SizedBox(height: 46,),
          Text("Earnings", textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
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
                      BalanceCard(),
                      Container(
                        margin: EdgeInsets.only(left: 30, right: 30),
                        height: 18,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18), bottomRight: Radius.circular(18) )
                        ),
                      ), 

                      SizedBox(height: 25,),


                       Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Expanded(child: Text("See payout history", textAlign: TextAlign.left, style: TextStyle( color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18 ),)), 

                          Icon(Icons.arrow_right)
                        ],
                      )
                    ),



                ],
               ),
            )
          ),



        ],
      ),
    );

  }
}