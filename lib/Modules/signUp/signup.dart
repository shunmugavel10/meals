import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:spark/Modules/LoginPage/login.dart';
import 'package:spark/common/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  bool loading = false;
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
      body: loading
          ? LinearProgressIndicator()
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 50,
                        ),
                        child: Text(
                          'Continue with Email',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Image(
                                  image: AssetImage("assets/images/signin.png"),
                                  height: size.height * 0.31,
                                )),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Enter your email",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 7),
                                  width: size.width * 0.9,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 10.0, // soften the shadow

                                        offset: Offset(
                                          1,
                                          5.0,
                                        ),
                                      )
                                    ],
                                  ),
                                  child: TextFormField(
                                    controller: emailController,
                                    cursorColor: Color(primary),
                                    textAlign: TextAlign.left,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: ("Enter your email"),
                                      border: InputBorder.none,
                                      hintStyle: _styleBody2_3,
                                    ),
                                    enableInteractiveSelection: true,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please enter the valid emailid";
                                      }
                                      // return null;
                                    },
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: () {
                        
                        },
                        minWidth: double.infinity,
                        height: 55,
                        child: Text("Next",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        color: Color(primary),
                        splashColor: Color(primary),
                      ),

                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Already have account?",
                              style: TextStyle(color: Colors.grey)),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              child: Text("Login",
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
