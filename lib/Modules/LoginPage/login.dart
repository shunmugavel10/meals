import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_ui_widgets/text/gradient_text.dart';

import 'package:spark/Modules/LoginPage/verify_email_page.dart';

import 'package:spark/Modules/signUp/signup.dart';
import 'package:spark/common/colors.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  TextStyle _styleBody2_3 = TextStyle(
      fontSize: fontBody2,
      letterSpacing: 1.0,
      fontWeight: FontWeight.w400,
      color: Color(colorText2));
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 70,
                  ),
                  child: GradientText(
                    'Spark',
                    gradient: LinearGradient(
                      colors: [
                        Colors.pink,
                        Color(primary),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Log In",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  child: TextFormField(
                    controller: emailController,
                    cursorColor: Color(primary),
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: ("Email"),
                      hintStyle: _styleBody2_3,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(primary),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                    ),
                    enableInteractiveSelection: true,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter the valid emailid";
                      }
                      // return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    cursorColor: Color(primary),
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: ("Password"),
                      hintStyle: _styleBody2_3,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(primary),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                    ),
                    enableInteractiveSelection: true,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter password";
                      }
                      // return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: ()  {
                    
                  },
                  minWidth: double.infinity,
                  height: 50,
                  child: Text("Log In",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color(primary),
                  splashColor: Color(primary),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 95),
                  child: TextButton(
                      onPressed: () async {
                        setState(() {
                          loading = true;
                        });
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VerifyEmailPage()));
                      },
                      child: Text("Forget Password?",
                          style: TextStyle(color: Color(primary)))),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?",
                        style: TextStyle(color: Colors.grey)),
                    TextButton(
                        onPressed: () async {
                          setState(() {
                          loading = true;
                        });
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUp()));
                        },
                        child: Text("Sign up",
                            style: TextStyle(
                                color: Color(primary),
                                fontWeight: FontWeight.bold))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
