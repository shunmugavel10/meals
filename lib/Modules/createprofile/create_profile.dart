import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:spark/common/colors.dart';
import 'package:spark/common/dropdown_category_item.dart';
import 'package:spark/common/imagepicker.dart';

// ignore: must_be_immutable
class CreateProfile extends StatefulWidget {
  String email;
  CreateProfile({
    Key? key,
    required this.email,
  }) : super(key: key);

  @override
  _CreateProfileState createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  final _formKey = GlobalKey<FormState>();
   TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool loading =  false;
  TextStyle _styleBody2_3 = TextStyle(
      fontSize: fontBody2,
      letterSpacing: 1.0,
      fontWeight: FontWeight.w400,
      color: Color(colorText2));


  TextStyle _styleBody2_2 = TextStyle(
      fontSize: fontBody5, fontWeight: FontWeight.w600, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
          //change your color here
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Create Profile",
          style: _styleBody2_2,
        ),
      ),
      backgroundColor: Colors.white,
      body:loading? LinearProgressIndicator() : SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                padding: EdgeInsets.symmetric(vertical: 7),
                width: size.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0, // soften the shadow

                      offset: Offset(
                        1,
                        5.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: TextFormField(
                  controller: nameController,
                  cursorColor: Color(primary),
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: ("Your first name"),
                    hintStyle: _styleBody2_3,
                    border: InputBorder.none,
                  ),
                  enableInteractiveSelection: true,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please enter the name";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                padding: EdgeInsets.symmetric(vertical: 7),
                width: size.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0, // soften the shadow

                      offset: Offset(
                        1,
                        5.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: TextFormField(
                  controller: lastNameController,
                  cursorColor: Color(primary),
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: ("Your last name"),
                    hintStyle: _styleBody2_3,
                    border: InputBorder.none,
                  ),
                  enableInteractiveSelection: true,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please enter the lastname";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                padding: EdgeInsets.symmetric(vertical: 7),
                width: size.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0, // soften the shadow

                      offset: Offset(
                        1,
                        5.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: TextFormField(
                  controller: phoneController,
                  cursorColor: Color(primary),
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: ("Contact Number"),
                    hintStyle: _styleBody2_3,
                    border: InputBorder.none,
                  ),
                  enableInteractiveSelection: true,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please enter the Contact number";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                padding: EdgeInsets.symmetric(vertical: 7),
                width: size.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0, // soften the shadow

                      offset: Offset(
                        1,
                        5.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: DateTimePicker(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.event),
                    border: InputBorder.none,
                  ),
                  type: DateTimePickerType.date,
                  dateMask: 'd MMM, yyyy',
                  initialValue: DateTime.now().toString(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  // icon: Icon(Icons.event),
                  selectableDayPredicate: (date) {
                    if (date.weekday == 7 || date.weekday == 7) {
                      return false;
                    }

                    return true;
                  },
                  onChanged: (val) => print(val),
                  validator: (val) {
                    print(val);
                    return null;
                  },
                  onSaved: (val) => print(val),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              DropdownCategoryItem(),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Documents",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  ImagePickerField()
                ],
              ),
              SizedBox(
                height: 60,
              ),
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: ()  {

                 
                },
                minWidth: double.infinity,
                height: 55,
                child: Text("Submit",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: Color(primary),
                splashColor: Color(primary),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
