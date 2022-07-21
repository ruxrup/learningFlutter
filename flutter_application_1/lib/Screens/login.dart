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
                  height: 20,
                ),
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Welcome $name!",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ("Please Enter a Username!");
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        decoration: InputDecoration(
                            hintText: "Enter username", labelText: "Username"),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ("Please Enter a Password!");
                          } else if (value.length < 6) {
                            return ("Password cannot be less than 6 characters!");
                          } else {
                            return null;
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter username", labelText: "Username"),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Material(
                        color: Colors.indigoAccent,
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
                                    ? Icon(Icons.done)
                                    : Text(
                                        "Login",
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
