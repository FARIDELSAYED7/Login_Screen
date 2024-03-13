import 'package:flutter/material.dart';
import 'package:login_app/Screens/Join_screen.dart';

class Main_Screen extends StatelessWidget {
  const Main_Screen({super.key});

  @override
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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Logo1.png",
              height: 450,
              width: 450,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 78, bottom: 50),
              child: Text(
                "Hi Welcome To IEEE CUSB",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Join_screen()),
                  );
                },
                icon: Icon(
                  Icons.arrow_circle_right_rounded,
                  size: 80,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    ));
    ;
  }
}
