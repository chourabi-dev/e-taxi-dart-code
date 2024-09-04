import 'package:etaxi/tabs/cars.dart';
import 'package:etaxi/tabs/drivers.dart';
import 'package:etaxi/tabs/profile.dart';
import 'package:etaxi/tabs/solde.dart';
import 'package:etaxi/widgets/drawer_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int _selectedIndex = 0;

  List<Widget> _tabs = [
    Icon(Icons.map),
    DriversTab(),
    CarsTab(),
    SoldeTab(),
    ProfileTab()

  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration( 
            color: Color.fromRGBO(255, 179, 0, 1)
          ),
          child: Column(children: [

            SizedBox(height: 46,),
            CircleAvatar( radius: 51,  ),
            SizedBox(height: 25,),
            Text("John smith", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color.fromRGBO(25, 25, 27, 1)),)


            // Menu item
            ,
            SizedBox(height: 46,),

            DrawerMenu(),
            DrawerMenu(),
            DrawerMenu(),
            DrawerMenu(),
            DrawerMenu(),
            



            
          ],),
        ),
      ),
      body: Center(
        child: _tabs.elementAt(_selectedIndex)
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(255, 179, 0, 1),
        unselectedItemColor:Color.fromRGBO(97, 100, 107, 1),
        onTap: (i){
          setState(() {
            _selectedIndex = i;
            });
        },
        currentIndex: _selectedIndex,
        items: [ 
          BottomNavigationBarItem(
            
            label: "Home",
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label: "Drivers",
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label: "Cars",
            icon: Icon(Icons.countertops)
          ),
          BottomNavigationBarItem(
            label: "Solde",
            icon: Icon(Icons.cut)
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person)
          ),
          
        ],
      ),
    );
  }
}