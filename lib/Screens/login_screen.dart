import 'package:flutter/material.dart';
import 'package:trial/Screens/signup_screen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool osbSecured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.orange[900], Colors.orange[400]])),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.only(top: 150),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Log-in",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(
                  color: Colors.grey[700],
                  thickness: 3,
                ),
                Text(
                  "Welcome to Path Way",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.orange[100],
                            offset: Offset(5, 8),
                            blurRadius: 50)
                      ]),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.orange,
                            ),
                            hintText: "Enter email",
                            border: InputBorder.none),
                      ),
                      Divider(),
                      TextFormField(
                        obscureText: osbSecured,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.orange,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  osbSecured = !osbSecured;
                                });
                              },
                              child: Icon(
                                Icons.remove_red_eye,
                                color: Colors.orange,
                              ),
                            ),
                            hintText: "Enter password",
                            border: InputBorder.none),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.orange[900], Colors.orange[400]]),
                          borderRadius: BorderRadius.circular(100)),
                      child: Text("Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => SignUp()));
                    },
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    child: Text(
                      "Not have an account ? Create One",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
