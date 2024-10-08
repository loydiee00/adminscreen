import 'package:flutter/material.dart';
class CustomTicket extends StatelessWidget {
  final double height;
  final double width;

  // Constructor to pass custom height and width
  CustomTicket({this.height = 300, this.width = 400}); // Height can be adjusted as needed

  @override
  Widget build(BuildContext context) {
    return Center( // Centering the entire ticket
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Any remaining content can go here
            // For example, you could add other widgets or information about the ticket
          ],
        ),
      ),
    );
  }
}
