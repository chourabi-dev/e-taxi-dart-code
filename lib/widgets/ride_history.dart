import 'package:flutter/material.dart';

class RideHistory extends StatelessWidget {
  const RideHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( 
      child: Card(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // left
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // blue border
                          border: Border.all(color: Color.fromRGBO(255, 179, 0, 1), width: 2),
                        ),
                        child: CircleAvatar(radius: 30,),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        child: Column(
                          children: [
                            Text("john wick",style: TextStyle( fontWeight: FontWeight.w600, fontSize: 16 ),),
                            SizedBox(height: 5,),
                            // pill
                            Container( 
                              padding: EdgeInsets.only(left: 8, right: 8),
                              height: 25,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(0 , 199, 190, 1),
                                borderRadius: BorderRadius.circular(18)
                              ),
                              child: Center(child: Text("Accepted", style: TextStyle(color: Colors.white),),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // right
                Container(
                  child: Column(
                    children: [
                      Text("12€",style: TextStyle( fontWeight: FontWeight.w600, fontSize: 16 ),),
                      SizedBox(height: 10,),
                      Text("2.2km",style: TextStyle( fontWeight: FontWeight.w400, fontSize: 14, color: Color.fromRGBO(175, 177, 182, 1) ),)
                    ],
                  ),
                )
                
              ],
            ),

            SizedBox(height: 30,),
            Row(
              children: [
                // icons zone
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.location_on, color: Color.fromRGBO(255, 179, 0, 1),),
                      SizedBox(height: 5,),
                      Container(
                        width: 8, 
                        height: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/ligne.png"), fit: BoxFit.contain)
                          
                        ),
                      ),
                      Icon(Icons.location_on, color: Color.fromRGBO(255, 179, 0, 1),),
                      SizedBox(height: 5,),
                      
                    ],
                  ),
                ),
                Expanded(child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("PICK UP",style: TextStyle( fontWeight: FontWeight.w600, fontSize: 14, color: Color.fromRGBO(175, 177, 182, 1) ),),
                      SizedBox(height: 8,),
                      Text("2464 Royal Ln. Mesa, New Jersey 45463",style: TextStyle( fontWeight: FontWeight.w400, fontSize: 12 ),),
                      SizedBox(height: 15,),
                       Text("PICK UP",style: TextStyle( fontWeight: FontWeight.w600, fontSize: 14, color: Color.fromRGBO(175, 177, 182, 1) ),),
                      SizedBox(height: 8,),
                      Text("2464 Royal Ln. Mesa, New Jersey 45463",style: TextStyle( fontWeight: FontWeight.w400, fontSize: 12 ),),
                      
                    ]
                  ),
                ))
              ],
            )
          ],
        ),
        )
      ),
    );
  }
}