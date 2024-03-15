import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 171, 140, 255),
          Color.fromARGB(255, 68, 21, 149),
        ),
      ),
    ),
  );
}
