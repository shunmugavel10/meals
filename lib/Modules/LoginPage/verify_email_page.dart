import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gradient_ui_widgets/text/gradient_text.dart';
import 'package:spark/common/colors.dart';


class VerifyEmailPage extends StatefulWidget {
  VerifyEmailPage({Key? key}) : super(key: key);

  @override
  _VerifyEmailPageState createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
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
      body: loading? LinearProgressIndicator() : SingleChildScrollView(
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
                  "Verify your Email",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter your Email to confirm, \nwe will send OTP to email",
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 40,
                ),
                 TextFormField(
                                  controller:emailController,
                                  cursorColor: Color(primary),
                                  textAlign: TextAlign.left,
                                  keyboardType: TextInputType.emailAddress,
                                  
                                  decoration: InputDecoration(
                                    hintText: ("Email"),
                                    hintStyle: _styleBody2_3,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color(primary),width: 1,style: BorderStyle.solid),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey,width:1,style: BorderStyle.solid),
                                    ),
                                  ),
                                  enableInteractiveSelection: true,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please enter the valid emailid";
                                    }
                                    return null;
                                  },
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
                  child: Text("Confirm",
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
