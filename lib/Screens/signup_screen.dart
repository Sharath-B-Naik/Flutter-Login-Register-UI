import 'package:flutter/material.dart';
import 'package:trial/utils/snackbar.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

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
            margin: EdgeInsets.only(top: 100),
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
                  "Sign-Up",
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
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.orange,
                              ),
                              hintText: "Enter Full Name",
                              border: InputBorder.none),
                        ),
                        Divider(),
                        TextFormField(
                          controller: phoneController,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.phone,
                                color: Colors.orange,
                              ),
                              hintText: "Enter Phone Number",
                              border: InputBorder.none),
                        ),
                        Divider(),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.email,
                                color: Colors.orange,
                              ),
                              hintText: "Enter Email",
                              border: InputBorder.none),
                        ),
                        Divider(),
                        TextFormField(
                          controller: passwordController,
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
                              hintText: "Enter Password",
                              border: InputBorder.none),
                        ),
                        Divider(),
                        TextFormField(
                          controller: confirmController,
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
                              hintText: "Confirm Password",
                              border: InputBorder.none),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: InkWell(
                    onTap: validate,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.orange[900], Colors.orange[400]]),
                          borderRadius: BorderRadius.circular(100)),
                      child: Text("Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
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

  void validate() {
    var result = formKey.currentState;
    if (result.validate()) {
      if (nameController.text == "")
        snackBar(context, "Enter Full Name");
      else if (phoneController.text == "")
        snackBar(context, "Enter Phone Number");
      else if (emailController.text == "")
        snackBar(context, "Enter Email");
      else if (passwordController.text == "")
        snackBar(context, "Enter Password");

      if (passwordController.text == confirmController.text) {
      } else {
        snackBar(context, "PassWord not matched");
      }
    }
  }
}
