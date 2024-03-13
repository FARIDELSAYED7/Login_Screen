import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class bgcolor extends StatelessWidget {
  bgcolor({required this.column});
  Column column;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 1, 66, 104),
            Color.fromARGB(255, 57, 117, 196),
          ],
        )),
        child: column,
      ),
    );
  }
}
