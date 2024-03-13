import 'package:flutter/material.dart';
import 'package:login_app/compontets/Background.dart';

class Signup_screen extends StatefulWidget {
  const Signup_screen({super.key});

  @override
  State<Signup_screen> createState() => _Signup_screenState();
}

class _Signup_screenState extends State<Signup_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bgcolor(
          column: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Logo1.png",
                height: 200,
              ),
            ],
          ),
          Text(
            "Create an Account",
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 7, bottom: 7),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.person,
                      size: 35,
                    ),
                    hintText: 'Username Or Email',
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 7, bottom: 7),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      size: 35,
                    ),
                    hintText: 'Password',
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 7, bottom: 7),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      size: 35,
                    ),
                    hintText: 'Confirme Password',
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                  side: MaterialStatePropertyAll(
                      BorderSide(color:   Color.fromRGBO(40, 102, 168, 0.945))),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(40, 102, 168, 0.945))),
              clipBehavior: Clip.none,
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 125, right: 125, top: 14, bottom: 14),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )),
        ],
      )),
    );
  }
}
