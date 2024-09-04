import 'package:etaxi/widgets/custom_button.dart';
import 'package:etaxi/widgets/input_label.dart';
import 'package:etaxi/widgets/main_screens_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {


  confirmResetPassword(){
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
                    MainScreenTitle(title: "Reset your password"),
                    
                    SizedBox(height: 30),

                    Text("Please enter your email to reset your password", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),



                    InputLabel(label: "Email", inputPlaceHolder: "Your email")
                     
                    , 
                    
                    SizedBox(height: 15),


                    CustomButton(text: "Send", function: confirmResetPassword,)


                       
                    

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