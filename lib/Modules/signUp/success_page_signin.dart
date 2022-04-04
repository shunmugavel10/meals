import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gradient_ui_widgets/text/gradient_text.dart';
import 'package:spark/Modules/landingPage.dart';
import 'package:spark/common/colors.dart';


class SuccessPageSignIn extends StatelessWidget {
  const SuccessPageSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, ),
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
              SizedBox(height:85,),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: Icon(
                        Icons.check_circle_rounded,
                        color: Colors.green,
                        size: 60,
                      ),
                    ),
                    Text(
                      "Success",
                      style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      "Congratulations your account has \nbeen activated within 24 hours.",
                      style: TextStyle(color: Colors.grey, fontSize: 18,),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height:100,),
              // ignore: deprecated_member_use
              FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage()));
              },
              minWidth: double.infinity,
              height: 55,
              child: Text("Log In", style: TextStyle(color: Colors.white, fontSize: 20)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Color(primary),
              splashColor: Color(primary),
            ),
          

            ],
          ),
        ),
      ),
    );
  }
}