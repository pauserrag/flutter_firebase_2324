import 'package:flutter/material.dart';

class TextFieldAuth extends StatelessWidget {
  
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;

  const TextFieldAuth({
    super.key,
    required this.controller, 
    required this.obscureText, 
    required this.hintText,
    });

  @override
  Widget build(BuildContext context) {
    return Padding( 
      padding: EdgeInsets.symmetric(horizontal: 25,),
      child: TextField(
        cursorColor: const Color.fromARGB(255, 222, 100, 0),
        style: TextStyle(
          color: const Color.fromARGB(255, 154, 69, 0),
        ),
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.orange[800],
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 255, 229, 190),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ), 
          ),
          fillColor: const Color.fromARGB(255, 255, 205, 103),
          filled: true,
        ),
      ),

    );
  }
}