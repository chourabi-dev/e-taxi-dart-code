import 'package:flutter/material.dart';

class DriverCard extends StatelessWidget {
  const DriverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
              color: Colors.white,
              child: Expanded(
                child:  Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  spreadRadius: 5, // How much the shadow spreads
                  blurRadius: 7, // How blurry the shadow is
                  offset: Offset(0, 3), // Position of the shadow
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
          ),
         
                  SizedBox(height: 15,),
                  Text("Matricule voiture", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                   SizedBox(height: 9,),
                  Text("Disponible", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade500),)
                ],),
              ),
              )
              
               
    );
  }
}