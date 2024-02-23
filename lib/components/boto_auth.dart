import 'package:flutter/material.dart';

class BotoAuth extends StatelessWidget {
  const BotoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(25),
      color: Color.fromARGB(255, 244, 111, 54),
      child: Text("Login"),
    );
  }
}