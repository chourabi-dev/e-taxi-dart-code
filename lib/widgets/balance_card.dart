import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
         gradient: LinearGradient(
              colors: [Color.fromRGBO(255, 179, 0, 1), Color.fromRGBO(158 , 111, 1, 1)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
        borderRadius: BorderRadius.circular(18)
      ),
      child: Column(
        children: [

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Container(
                      child: Column(
                        children: [
                          Text("My balance", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
                          Text("Mar 09.2021", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
                          
                        ],
                      ),
                    ),
                    
                    Container(
                      child: Column(
                        children: [
                          Text("Payout schedule", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
                          Text("Weekly", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                          
                        ],
                      ),
                    ),
                    


                ],


            )
            ,

            SizedBox(height: 50,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Container(
                      child: Column(
                        children: [
                        Text("€500", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36),),
                          
                        ],
                      ),
                    ),
                    
                    Container(
                      padding: EdgeInsets.only(left: 19, right: 19, top: 8 , bottom: 9),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.black
                      ),
                      child: Text("Cash out", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),)
                    ),
                    


                ],


            )

        ],
      ),
    );
  }
}