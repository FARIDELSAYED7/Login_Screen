import 'package:flutter/material.dart';
import 'package:login_app/Screens/Login_screen.dart';
import 'package:login_app/Screens/Signup_screen.dart';
import 'package:login_app/compontets/Background.dart';
import 'package:login_app/main.dart';

class Join_screen extends StatefulWidget {
  const Join_screen({super.key});

  @override
  State<Join_screen> createState() => _Join_screenState();
}

class _Join_screenState extends State<Join_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: bgcolor(
            column: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/Logo1.png",
          height: 450,
          width: 450,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            " J O I N  N O W ! ",
            style: TextStyle(
                fontSize: 46, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ))),
            clipBehavior: Clip.none,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login_screen()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 105, right: 105, top: 10, bottom: 10),
              child: Text(
                "Log in",
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(40, 102, 168, 0.945)),
              ),
            )),
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
            style: ButtonStyle(
                side: MaterialStatePropertyAll(
                    BorderSide(color: Colors.white, width: 5)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromRGBO(40, 102, 168, 0.945))),
            clipBehavior: Clip.none,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Signup_screen()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 87, right: 87, top: 10, bottom: 10),
              child: Text(
                "Sign up",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )),
      ],
    )));
  }
}
