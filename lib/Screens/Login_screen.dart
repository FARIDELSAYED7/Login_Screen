import 'package:flutter/material.dart';
import 'package:login_app/Screens/Join_screen.dart';
import 'package:login_app/compontets/Background.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Login_screenState();
}

bool _isHidden = true;

class _Login_screenState extends State<Login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bgcolor(
        column: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 60, bottom: 20, right: 180),
                      child: Image.asset(
                        "assets/images/Logo1.png",
                        width: 160,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Join_screen()),
                          );
                        },
                        icon: Icon(
                          Icons.keyboard_return,
                          size: 40,
                          color: Colors.white,
                        ))
                  ],
                ),
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
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
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 7, bottom: 7),
                      child: TextFormField(
                        obscureText: _isHidden,
                        autofocus: false,
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            size: 32,
                          ),
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 250, bottom: 60),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
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
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 140, right: 140, top: 14, bottom: 14),
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: SizedBox(
                    width: 40,
                  ),
                ),
                Text("- OR Continue With -",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.apple,
                          size: 50,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.facebook,
                          size: 50,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.g_translate_outlined,
                          size: 50,
                          color: Colors.white,
                        )),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Create An Account? Sign UP",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
