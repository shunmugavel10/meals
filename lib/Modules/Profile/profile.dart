import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark/Modules/LoginPage/login.dart';
import 'package:spark/Modules/Profile/edit_profile.dart';
import 'package:spark/Modules/meetupPage/meetup_page.dart';
import 'package:spark/Modules/model/profile_model.dart';
import 'package:spark/Modules/receipt/reciept.dart';
import 'package:spark/common/colors.dart';
import 'package:spark/common/shared_preferrences.dart';
import 'package:spark/common/show_toast.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextStyle _styleHeading2_1 = TextStyle(
      fontSize: fontHeaderXL , fontWeight: FontWeight.w500, color: Colors.black);
  TextStyle _styleBody2_1 = TextStyle(
      fontSize: fontBody2 , fontWeight: FontWeight.w500, color: Color(primary));





  // getData() async {
  //   profileData = await getUserProfileData();
  // }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
  //  getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(secondary),
      body: FutureBuilder(
      
          builder: (context, AsyncSnapshot<ProfileModel?> snapshot) {
            if (snapshot.hasData) 
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 120, top: 70),
                            child: Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/resturentLogo.png"),
                                  ),
                                  borderRadius: BorderRadius.circular(45)),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 60,
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications_none_sharp,
                                size: 30,
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      snapshot.data!.firstName!,
                      // "",
                      style: _styleHeading2_1,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 280),
                            child: IconButton(
                                onPressed: () {
                                   Navigator.push(context,
                            MaterialPageRoute(builder: (context) => EditProfile()));
                                },
                                icon: Icon(
                                  Icons.edit_outlined,
                                  color: Color(primary),
                                  size: 20,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, bottom: 25),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Vendor Code",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          // snapshot.data!.id!,
                                          "DS26566656",
                                          style: TextStyle(fontSize: 15),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 52,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Customer type",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Food & Beverage",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Contact Number",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          snapshot.data!.contactNumber!,
                                          // "",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "E-mail",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          snapshot.data!.email!,
                                          // "",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Id card type",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Resturent Licence",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Id number",
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          // snapshot.data!.id!,
                                          "2651126323",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // ignore: deprecated_member_use
                          FlatButton(
                            minWidth: 160,
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.lock_outlined,
                                  color: Color(primary),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text("Change password", style: _styleBody2_1),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(color: Color(primary))),
                            color: Colors.white,
                            splashColor: Color(secondary),
                          ),
                          // ignore: deprecated_member_use
                          FlatButton(
                            minWidth: 100,
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.image_outlined,
                                  color: Color(primary),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text("Gallery", style: _styleBody2_1),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(color: Color(primary))),
                            color: Colors.white,
                            splashColor: Color(secondary),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 75,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.lock_outline,
                                    color: Color(primary),
                                    size: 20,
                                  )),
                              Column(
                                children: [
                                  Text(
                                    "Avilable Slot",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "26",
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.edit_outlined,
                                    color: Color(primary),
                                    size: 20,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text(
                        "Booking details",
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Divider(
                        thickness: 0.4,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Support",
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Divider(
                        thickness: 0.4,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      title: Text("Account settings",
                          style: TextStyle(fontSize: 20)),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MeetupPage()));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Divider(
                        thickness: 0.4,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      title: Text("About us", style: TextStyle(fontSize: 18)),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Receipt()));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Divider(
                        thickness: 0.4,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Log out",
                        style: TextStyle(color: Color(primary), fontSize: 18),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                    ),
                  ],
                ),
              ),
            );
            else return LinearProgressIndicator();
          }),
    );
  }
}
