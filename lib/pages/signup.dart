import 'package:flutter/material.dart';
import 'package:login_signup_ui/pages/signin.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xffb51837),
          Color(0xff661c3a),
          Color(0xff301939)
        ], begin: Alignment.topLeft, end: Alignment.topRight)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Create Your\nAccount",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 50.0, left: 30.0, right: 30.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                          color: Color(0xffb51837),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Name",
                          prefixIcon: Icon(Icons.person_2_outlined)),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                          color: Color(0xffb51837),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Email",
                          prefixIcon: Icon(Icons.email_outlined)),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                          color: Color(0xffb51837),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          prefixIcon: Icon(Icons.password)),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xffb51837),
                            Color(0xff661c3a),
                            Color(0xff301939)
                          ], begin: Alignment.topLeft, end: Alignment.topRight),
                          borderRadius: BorderRadius.circular(30)),
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Already have account? ",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400),
                            ),
                             GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Signin() ));
                              },
                               child: Text(
                                "SIGN IN",
                                style: TextStyle(
                               color: const Color.fromARGB(255, 4, 72, 129),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                                                       ),
                             ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    
  }
}