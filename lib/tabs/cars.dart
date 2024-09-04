import 'package:etaxi/widgets/car_card.dart';
import 'package:etaxi/widgets/driver_card.dart';
import 'package:etaxi/widgets/dropdown.dart';
import 'package:flutter/material.dart';

class CarsTab extends StatefulWidget {
  const CarsTab({super.key});

  @override
  State<CarsTab> createState() => _CarsTabState();
}

class _CarsTabState extends State<CarsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: [
          
          SizedBox(height: 46,),
          Text("Cars", textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
          SizedBox( height: 26,),

          Expanded(child: Container(
            width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 17, right: 20, left: 20),
               decoration: BoxDecoration(
                 color: Color.fromRGBO(245, 245, 245, 1),
                borderRadius: BorderRadius.only( topLeft: Radius.circular(15), topRight: Radius.circular(15))
                
               ),


               child: Column(
                children: [

                    // search block
                    Container(
                      child: Row(children: [
                        Expanded(child: TextField( 
                          decoration: InputDecoration(
                             fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide.none
                            ), 
                            hintText: 'Search',
                            contentPadding: EdgeInsets.all(10),
                            prefixIcon: Icon(Icons.search_sharp, color: Colors.grey, size: 20,)
                            ),
                        )),
                        SizedBox(width: 10,),
                      
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 179, 0, 1),
                              borderRadius: BorderRadius.circular(13)
                            ),
                            child: Center(
                              child: Icon(Icons.menu),
                            ),
                          ),
                        )
                        
                      ],),
                    ),

                    // filters 

                    SizedBox(height: 25,),


                    Row(
                      children: [
                        Expanded(child: DropdownList()),
                        SizedBox(width: 15,), 
                        Expanded(child: DropdownList()),
                    
                      ],
                    )


                    // drivers
                    ,
                    Expanded(child: Container(
                      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of items per row
            crossAxisSpacing: 10.0, // Spacing between columns
            mainAxisSpacing: 10.0, // Spacing between rows
            childAspectRatio: 0.8
          ),
          itemCount: 10, // Number of items in the grid
          itemBuilder: (context, index) {
            return CarCard();
          },
          padding: EdgeInsets.all(10.0), // Padding around the grid
        ),
      ),
    
                    )

                ],
               ),
            )
          ),



        ],
      ),
    );

  }
}