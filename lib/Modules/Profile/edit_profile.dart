import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:spark/Modules/model/profile_model.dart';
import 'package:spark/common/colors.dart';
import 'package:spark/common/shared_preferrences.dart';
import 'package:spark/common/show_toast.dart';

class EditProfile extends StatefulWidget {
  final ProfileModel? profileData;

  const EditProfile({Key? key, this.profileData}) : super(key: key);
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  bool loading = false;

  fill() {
    setState(() {
      emailController.text = widget.profileData!.email!;
      contactController.text = widget.profileData!.contactNumber!;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fill();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle _styleBody2_1 = TextStyle(
        fontSize: fontBody2, fontWeight: FontWeight.w500, color: Colors.black);
    TextStyle _styleBody2_2 = TextStyle(
        fontSize: fontBody2, fontWeight: FontWeight.w500, color: Colors.grey);

    return Scaffold(
      body: loading
          ? LinearProgressIndicator()
          : Container(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Email",
                      style: _styleBody2_1,
                    ),
                    TextFormField(
                      controller: emailController,
                      cursorColor: Color(secondary),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                      style: _styleBody2_2,
                      decoration: InputDecoration(
                        hintText: "email",
                        hintStyle: _styleBody2_2,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 2,
                              style: BorderStyle.solid),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.pinkAccent,
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                      ),
                      enableInteractiveSelection: true,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return ("Enter email");
                        }
                        // return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Cantact Number",
                      style: _styleBody2_1,
                    ),
                    TextFormField(
                      controller: contactController,
                      cursorColor: Color(secondary),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.numberWithOptions(),
                      style: _styleBody2_2,
                      decoration: InputDecoration(
                        hintText: "enter the contact Number",
                        hintStyle: _styleBody2_2,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2,
                              style: BorderStyle.solid),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.pinkAccent,
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                      ),
                      enableInteractiveSelection: true,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return ("Enter valid phone number");
                        }
                        // return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // ignore: deprecated_member_use
                          FlatButton(
                            child: Text(
                              "fd_cancel_msg",
                              style: _styleBody2_1,
                            ).tr(),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: BorderSide(color: Color(secondary))),
                            minWidth: (120),
                            height: (45),
                            color: Colors.transparent,
                            splashColor: Color(secondary),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          // ignore: deprecated_member_use
                          FlatButton(
                            child: Text(
                              "fd_account_manage_savebutton",
                              style: _styleBody2_2,
                            ).tr(),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            minWidth: (120),
                            height: (45),
                            color: Color(secondary),
                            splashColor: Color(primary),
                            onPressed: () {
                             
                            },
                          ),
                        ]),
                  ],
                ),
              ),
            ),
    );
  }
}
