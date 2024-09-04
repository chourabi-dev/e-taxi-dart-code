import 'package:etaxi/widgets/driver_card.dart';
import 'package:etaxi/widgets/dropdown.dart';
import 'package:etaxi/widgets/profile_informations_card.dart';
import 'package:etaxi/widgets/profile_menu.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, 
      decoration: BoxDecoration(
        color: Color.fromRGBO(245, 245, 245, 1),
      ),
      child: Column(
        children: [
         ProfileInformationsCard(),

      
        Expanded(
          child: Container(
             
            child:   Transform.translate(
              offset: Offset(0, -30), // Move the container up by 50 pixels
             
                child: ListView(
                  children: [
                      ProfieMenu(),
                      ProfieMenu(),
                      ProfieMenu(),
                      ProfieMenu(),
                      ProfieMenu(),
                      ProfieMenu(),
                      ProfieMenu(),
                      
                      
                  ],
                )
                 
              ),
            
          ))

      
         
    

        ],
      ),
    );

  }
}