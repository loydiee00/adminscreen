import 'package:flutter/material.dart';

class AddButtonBox extends StatelessWidget {
  final VoidCallback onAdd;

  const AddButtonBox({
    Key? key,
    required this.onAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450, // Set the width of the box
      height: 150, // Set the height of the box
      decoration: BoxDecoration(
        color: const Color.fromARGB(0, 255, 255, 255), // Transparent background color of the box
        borderRadius: BorderRadius.circular(10), // Rounded corners
        border: Border.all(
          color: const Color.fromARGB(255, 255, 255, 255), // Border color
          width: 2, // Border width
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 5), // Shadow position
          ),
        ],
      ),
      child: Center(
        child: ElevatedButton(
          onPressed: onAdd,
          child: Icon(
            Icons.add,
            size: 40, // Size of the plus icon
            color: const Color.fromARGB(255, 248, 248, 248), // Change icon color to match the border
          ),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(), backgroundColor: Colors.transparent, // Transparent button background
            padding: EdgeInsets.all(20), // Padding for the button
            side: BorderSide(
              color: const Color.fromARGB(255, 250, 250, 250), // Button border color
              width: 2, // Button border width
            ),
          ),
        ),
      ),
    );
  }
}
