import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Forgot Password',
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
                    "Forgot Password",
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
                        "Enter your Email address  and we will\n""send you a reset instructions",
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
                padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      minimumSize: const Size(400, 40),
                      maximumSize: const Size(400, 40),
                    ),
                    onPressed: () {},
                    child: Text("RESET PASSWORD")),
              ),



              // Center(
              //     child: Padding(
              //   padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              //   child: Text("Don't have account?"),
              // )),


            ],
          ),
        ),
      ),
    );
  }
}
