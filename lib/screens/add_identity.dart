import 'package:etaxi/widgets/custom_button.dart';
import 'package:etaxi/widgets/input_label.dart';
import 'package:etaxi/widgets/main_screens_title.dart';
import 'package:etaxi/widgets/primary_button.dart';
import 'package:etaxi/widgets/secondary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddIdentity extends StatefulWidget {
  const AddIdentity({super.key});

  @override
  State<AddIdentity> createState() => _AddIdentityState();
}

class _AddIdentityState extends State<AddIdentity> {


 


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
        child: Container(
         // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover, alignment: Alignment.topCenter, image: AssetImage("assets/1b412dbe7b3c5041d52be330ff0992cf.png"))
          ),

          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width:  MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),  // Adjust the radius as needed
                      topRight: Radius.circular(20.0), // Adjust the radius as needed
                    ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            child: Text("Skip"),
                            onTap: (){
                              //...
                            },
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 7),
                    MainScreenTitle(title: "Add your identity"),
                    SizedBox(height: 30),
                    

                  
                    
                    
                    InputLabel(label: "Identiy card number", inputPlaceHolder: "Your identity card number")
                    ,
                    SizedBox(height: 15),

                    InputLabel(label: "Date", inputPlaceHolder: "Date")
                    ,
                    SizedBox(height: 15),

                    
                     Text("Front",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(25, 25, 27, 1)),),
                    SizedBox(height: 5),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(245, 245, 245, 1),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.image, color: Colors.grey.shade700),
                            Text("uplod front face", style: TextStyle(color: Colors.grey.shade500),)
                          ],
                        )
                      ),
                    ),


                    SizedBox(height: 15),

                    
                     Text("Back",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(25, 25, 27, 1)),),
                    SizedBox(height: 5),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(245, 245, 245, 1),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.image, color: Colors.grey.shade700),
                            Text("uplod back face", style: TextStyle(color: Colors.grey.shade500),)
                          ],
                        )
                      ),
                    ),
                    



                    
                    SizedBox(height: 15),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          
                           SecondaryButton(text: "Previous",),
                           SizedBox(width: 15,),
                           PrimaryButton(text: "Previous",),
                           
                        ],
                      ),
                    ),
                    SizedBox(height: 15),

                    GestureDetector(
                      onTap: (){
                        // cancel logic
                      },
                      child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text("Cancel", textAlign: TextAlign.center,)
,
                    ),
                    )
 
                       
                    

                  ],
                ),
              ),
              
            ],
          ),
        ),

      ),
    );
  }
}