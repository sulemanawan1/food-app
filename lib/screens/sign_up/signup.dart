

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/screens/sign_in/signin.dart';

bool _isHidden = true;

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sign Up',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // color: Colors.grey,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(
                    "Create Account",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Container(
                  // color: Colors.red,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Text(
                        "Enter your Name,Email and Password \nfor sign up.",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                        textAlign: TextAlign.left,
                      ))),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Full Name",
                      fillColor: Color.fromRGBO(246, 246, 246, 255),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Email Address",
                      fillColor: Color.fromRGBO(246, 246, 246, 255),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(246, 246, 246, 255),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      labelText: 'Password',
                      suffix: InkWell(
                        onTap: _togglePasswordView,

                        /// This is Magical Function
                        child: Icon(
                          _isHidden
                              ?

                              /// CHeck Show & Hide.
                              Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(246, 246, 246, 255),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      labelText: 'Confirm Password',
                      suffix: InkWell(
                        onTap: _togglePasswordView,

                        /// This is Magical Function
                        child: Icon(
                          _isHidden
                              ?

                              /// CHeck Show & Hide.
                              Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                  )),
              Center(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(color: Colors.grey),
                      ))),
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      minimumSize: const Size(400, 40),
                      maximumSize: const Size(400, 40),
                    ),
                    onPressed: () {},
                    child: Text("Sign UP")),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have account?"),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                        onTap: () {

                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()),
                          );
                          print(" Sign In");
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.green),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Center(
                  child: Text(
                    " By Sigining up you agree to our Terms\n"
                    "Conditions & Privacy Policy.  ",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Center(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text("Or"))),
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(62, 89, 144, 1),
                    minimumSize: const Size(400, 40),
                    maximumSize: const Size(400, 40),
                  ),
    icon: FaIcon(
    FontAwesomeIcons.facebook

    ),//icon data for elevated button
                  label: Text("Connect with Facebook "),
                  onPressed: () {},
                ),
              ),Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 40),
                    maximumSize: const Size(400, 40),
                  ),
                  icon:   FaIcon(
    FontAwesomeIcons.google

    ),//icon data for elevated button
                  label: Text("Connect with Google "),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),

    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
