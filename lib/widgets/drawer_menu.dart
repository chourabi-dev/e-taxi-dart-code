import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.only(left: 46, right: 46),
              child: ListTile(
              title: Text("Profile", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
              trailing: Icon(Icons.arrow_forward_ios),
              )
            );
  }
}