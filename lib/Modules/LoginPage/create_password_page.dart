import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_ui_widgets/text/gradient_text.dart';
import 'package:spark/Modules/LoginPage/Success_page.dart';
import 'package:spark/Modules/model/login_model.dart';
import 'package:spark/common/colors.dart';
import 'package:spark/common/show_toast.dart';

class CreatePasswordPage extends StatefulWidget {
  CreatePasswordPage({
    Key? key,
  }) : super(key: key);

  @override
  _CreatePasswordPageState createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  // String? password;
  LoginModel? id;
  final _formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
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
                  "Create password",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    cursorColor: Color(secondary),
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
                      return null;
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
                    controller: confirmPasswordController,
                    cursorColor: Color(secondary),
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
                      if (val != passwordController.value.text) {
                        return "Password do not match";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: ()  {
                    
                  },
                  minWidth: double.infinity,
                  height: 55,
                  child: Text("Save",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Color(primary),
                  splashColor: Color(primary),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
