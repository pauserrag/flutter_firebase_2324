import 'package:flutter/material.dart';

class BotoAuth extends StatelessWidget {

  final String text;
  final void Function()? onTap;
  
  BotoAuth({
    super.key,
    required this.text,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 244, 111, 54),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
           vertical: 30,
           ),
        margin: const EdgeInsets.all(25),
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.orange[100],
            fontWeight: FontWeight.bold,
            fontSize: 16,
            letterSpacing: 4,
          ),
          ),
      ),
    );
  }
}