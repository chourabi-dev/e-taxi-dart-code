import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
              color: Colors.white,
              child: Expanded(
                child:  Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                  Container(
                    margin: EdgeInsets.all(5),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // two circlar containers that contains a menu icon and a save icon 
                       Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 2),
                            boxShadow: [
                              BoxShadow(
                                 color: Color.fromARGB(255, 138, 138, 138).withOpacity(0.2), // Shadow color
                                spreadRadius: 2, // How much the shadow spreads
                                blurRadius: 5, // How blurry the shadow is
                                offset: Offset(0, 3), // Shadow position (x, y)
                              ),
                            ],
                          ),
                          child: Icon(Icons.bookmark, color: Colors.black, size: 20),
                        )
                          ,
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 138, 138, 138).withOpacity(0.2), // Shadow color
                                spreadRadius: 2, // How much the shadow spreads
                                blurRadius: 5, // How blurry the shadow is
                                offset: Offset(0, 3), // Shadow position (x, y)
                              ),
                            ],
                          ),
                          child: Icon(Icons.bookmark, color: Colors.black, size: 20),
                        )

                           

                    ],
                  ),
                  ),

                  // image goes here !!
                  Container(),
                 
                  Container(
                    child: Column(
                      children: [
                        Text('12€', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),

                          Text("Matricule voiture", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.location_pin,  color: Colors.grey.shade500),
                              SizedBox(width: 5,), 
                              Text("Disponible", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade500),)
                            ],
                          )
                      ],
                    ),
                  )
                ],),
              ),
              )
              
               
    );
  }
}