import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/screens/delievry_to/delievry_to.dart';
import 'package:foodapp/screens/forgot_password/forgot_password.dart';
import 'package:foodapp/screens/sign_up/signup.dart';
bool _isHidden = true;

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
        appBar: AppBar(
          title: Text(
            'Sign In',
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
                    "Welcome to",
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
                        "Enter your Phone  number or\nEmail address for SignIn."
                        "Enjoy your Food :)",
                        style: TextStyle(
                          color: Colors.grey,

                            fontSize: 15),
                        textAlign: TextAlign.left,
                      ))),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Enter Email",
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
              Center(child: Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0),

                  child: GestureDetector(
                      onTap: (){

                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ForgotPassword()),
                        );

                      },

                      child: Text("Forget Password?",style: TextStyle(color: Colors.grey),)))),
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      minimumSize: const Size(400, 40),
                      maximumSize: const Size(400, 40),
                    ),
                    onPressed: () {

                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DelievryTo()),
                      );

                    },
                    child: Text("Sign in")),
              ),
              Center(child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text("Or"))),



            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0,
              0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Dont have an account?"),
                  SizedBox(width: 5,),
                  GestureDetector(onTap: (){
                    print(" Sign up");
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );

                  },
                      child: Text("Create new account.",style: TextStyle(color: Colors.green),))
              ],),
            ),
              // Center(
              //     child: Padding(
              //   padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              //   child: Text("Don't have account?"),
              // )),
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(62, 89, 144, 1),
                      minimumSize: const Size(400, 40),
                      maximumSize: const Size(400, 40),
                    ),     icon: FaIcon(
                    FontAwesomeIcons.facebook

                ),  //icon data for elevated button
                    label: Text("Connect with Facebook "),
                    onPressed: () {},
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(

                      minimumSize: const Size(400, 40),
                      maximumSize: const Size(400, 40),
                    ),
                  icon: FaIcon(
    FontAwesomeIcons.google

    ),  //icon data for elevated button
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
