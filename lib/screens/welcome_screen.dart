import 'package:etaxi/widgets/custom_button.dart';
import 'package:etaxi/widgets/input_label.dart';
import 'package:etaxi/widgets/main_screens_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {


  loginFN(){
    print("logged in ...");
  }


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
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
                    MainScreenTitle(title: "Welcome back"),
                    SizedBox(height: 30),
                    InputLabel(label: "Email / Phone number", inputPlaceHolder: "Your email or phone number")
                    ,
                    SizedBox(height: 15),
                    InputLabel(label: "Password", inputPlaceHolder: "Your password")

                    , 
                    SizedBox(height: 8),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              //
                            },
                            child: Text("Forgot your password ?."),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),


                    CustomButton(text: "Login", function: loginFN,)


                       
                    

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