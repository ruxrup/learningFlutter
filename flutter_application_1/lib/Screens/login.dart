import "package:flutter/material.dart";
import 'package:flutter_application_1/utils/routes.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = "";
  bool pressbutton = false;
  var formkey = GlobalKey<FormState>();

  gotoHome(BuildContext context) async {
    if (formkey.currentState!.validate()) {
      setState(() {
        pressbutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.Home);
      setState(() {
        pressbutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                  cacheHeight: 300,
                  cacheWidth: 300,
                ),
                SizedBox(
                  height: 200,
                ),
                Text(
                  "SINGLE APP, ALL SITES",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "AN APPLICATION FOR EVERY WEBSITE",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Material(
                        color: Colors.black,
                        borderRadius:
                            BorderRadius.circular(pressbutton ? 30 : 10),
                        child: InkWell(
                          splashColor: Colors.white,
                          onTap: () {
                            gotoHome(context);
                          },
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50,
                            width: pressbutton ? 50 : 120,
                            child: Center(
                                child: pressbutton
                                    ? Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      )
                                    : Text(
                                        "Let's Go!",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white),
                                      )),
                          ),
                        ),
                      )
                      // ElevatedButton(
                      //     onPressed: () {
                      //       Navigator.pushNamed(context, MyRoutes.Home);
                      //     },
                      //     style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                      //     child: Text(
                      //       "Login",
                      //     ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
