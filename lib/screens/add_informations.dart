import 'package:etaxi/widgets/custom_button.dart';
import 'package:etaxi/widgets/input_label.dart';
import 'package:etaxi/widgets/main_screens_title.dart';
import 'package:etaxi/widgets/primary_button.dart';
import 'package:etaxi/widgets/secondary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddInformations extends StatefulWidget {
  const AddInformations({super.key});

  @override
  State<AddInformations> createState() => _AddInformationsState();
}

class _AddInformationsState extends State<AddInformations> {


  loginFN(){
    print("logged in ...");
  }


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
                    MainScreenTitle(title: "Add your informations"),
                    SizedBox(height: 30),
                    

                    // photo section

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 101,
                          height: 101,
                          child: Icon(Icons.upload),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(245, 245, 245, 1),
                            borderRadius: BorderRadius.circular(500)
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Upload your image")
                      ],
                    ),
                    
                    
                    InputLabel(label: "First name", inputPlaceHolder: "Your first name")
                    ,
                    SizedBox(height: 15),

                    InputLabel(label: "Last name", inputPlaceHolder: "Your last name")
                    ,
                    SizedBox(height: 15),

                    
                    InputLabel(label: "Birthdate", inputPlaceHolder: "Enter your birthdate")
                    ,
                    SizedBox(height: 15),

                    

                    
                    InputLabel(label: "Phone number", inputPlaceHolder: "Your phone number")

                    , 
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