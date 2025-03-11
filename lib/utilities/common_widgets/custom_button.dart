import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String text;
  final int? fontsize; 

  const CustomButton({super.key, required this.text, this.fontsize});

  @override
  Widget build(BuildContext context) {
    final defaultFontSize = 16; 
    final fontSize = fontsize ?? defaultFontSize; 

    return GestureDetector(
      onTap: () {}, 
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey), 
          borderRadius: BorderRadius.circular(8), 
          color: Colors.blue[900], 
        ),
        padding: EdgeInsets.symmetric(horizontal:40,   vertical: 10),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize.toDouble()                                              ,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}