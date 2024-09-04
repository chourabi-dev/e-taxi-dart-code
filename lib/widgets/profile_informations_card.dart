import 'package:etaxi/widgets/bloc_star_title_value.dart';
import 'package:flutter/material.dart';

class ProfileInformationsCard extends StatefulWidget {
  const ProfileInformationsCard({super.key});

  @override
  State<ProfileInformationsCard> createState() => _ProfileInformationsCardState();
}

class _ProfileInformationsCardState extends State<ProfileInformationsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, 
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 179, 0, 1),
        borderRadius: BorderRadius.only( bottomRight: Radius.circular(100), bottomLeft: Radius.circular(100) )
      ),
      child: Column(
        
        children: [
          SizedBox(height: 36,),
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
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
          ),
          SizedBox(height: 15,),


          Text("John smith", style: TextStyle( fontWeight: FontWeight.w600, fontSize: 20 ),),

          SizedBox(height: 25,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                BlocStarValue(value: "7,87", label: "Label",),
                BlocStarValue(value: "7,87", label: "Label",),
                BlocStarValue(value: "7,87", label: "Label",),
                
            ],
          ),


          SizedBox(height: 30,),


          // menu

       
          
          
      ],),
    );
  }
}