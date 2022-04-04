import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_ui_widgets/text/gradient_text.dart';
import 'package:spark/common/colors.dart';

class PasswordOtpVerifyPage extends StatefulWidget {
  final String email;
  PasswordOtpVerifyPage({
    Key? key,
    required this.email,
  }) : super(key: key);

  @override
  _PasswordOtpVerifyPageState createState() => _PasswordOtpVerifyPageState();
}

class _PasswordOtpVerifyPageState extends State<PasswordOtpVerifyPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController codeController = TextEditingController();
bool loading = false;
  String? otp;
  TextStyle _styleBody2_3 = TextStyle(
      fontSize: fontBody2,
      letterSpacing: 1.0,
      fontWeight: FontWeight.w400,
      color: Color(colorText2));
  TextStyle _styleBody2_1 = TextStyle(
      fontSize: fontBody2,
      letterSpacing: 20.0,
      fontWeight: FontWeight.w600,
      color: Color(colorText1));

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: loading ? LinearProgressIndicator() : SingleChildScrollView(
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
                  "Confirm OTP",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "We have sent the cod to " + widget.email,
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  child: TextFormField(
                    controller: codeController,
                    cursorColor: Color(primary),
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.numberWithOptions(),
                    style: _styleBody2_1,
                    decoration: InputDecoration(
                      hintText: "Enter OTP",
                      hintStyle: _styleBody2_3,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(primary), width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
                    ),
                    enableInteractiveSelection: true,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter the valid OTP";
                      }
                      return null;
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
                  child: Text("Submit",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Color(primary),
                  splashColor: Color(primary),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Didn’t receive code?",
                        style: TextStyle(color: Colors.grey)),
                    TextButton(
                        onPressed: () {
                          
                        },
                        child: Text("Resend",
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
