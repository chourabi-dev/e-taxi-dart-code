import 'package:flutter/material.dart';

class ProfieMenu extends StatelessWidget {
  const ProfieMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(bottom: 8, left: 25, right: 25),
                        child: ListTile(
                          title: Text("Title"),
                          subtitle: Text("subtitle"),
                          trailing: Icon(Icons.arrow_right),
                        ),
                      );
  }
}