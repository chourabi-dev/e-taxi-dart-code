import 'package:flutter/material.dart';

class DropdownList extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}
class _DropdownExampleState extends State<DropdownList> {
  String? selectedValue; // The value selected by the user

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(18)
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: DropdownButton<String>(
        
        hint: Text(
          "Select an option",
          style: TextStyle(color: Colors.white), // White text for hint
        ),
        value: selectedValue,
        icon: Icon(Icons.arrow_drop_down, color: Colors.white), // White arrow icon
        iconSize: 24,
        dropdownColor: Colors.black, // Black background for dropdown items
        isExpanded: true, // To make the dropdown take the full width
        underline: SizedBox(), // Removes the default underline
        style: TextStyle(
          color: Colors.white, // White text for dropdown items
          fontSize: 16,
        ),
        items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue;
          });
        },
      ),
    );
  }
}