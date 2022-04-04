import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spark/common/colors.dart';
import 'package:spark/common/search_field_container.dart';

class VendorPage extends StatefulWidget {
  @override
  _VendorPageState createState() => _VendorPageState();
}

class _VendorPageState extends State<VendorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  color: Color(primary),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30, right: 15, left: 320),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_none_sharp),
                          color: Colors.white,
                          iconSize: 32,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100, right: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "25",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                              ),
                            ),
                            Image(
                                image: AssetImage(
                                    "assets/images/Profileimage.png"))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Text(
                          "Today Available Slot",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35, top: 10),
                  child: Card(
                    margin: EdgeInsets.only(top: 160),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Total booking",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        )),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          size: 20,
                                          color: Colors.red,
                                        ),
                                        Text(" 11",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                            )),
                                      ],
                                    ),
                                  ]),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Earned",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      )),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                      Text(r" $ 44",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey[400],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Pending booking",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        )),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          size: 20,
                                          color: Colors.red,
                                        ),
                                        Text(" 11",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                            )),
                                      ],
                                    ),
                                  ]),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Confirmed",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      )),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                      Text(" 44",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 35, left: 25),
                child: Text("Bookings",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisSize: MainAxisSize.min,
              children: [
                SearchFeildContainer(
                  onChanged: (value) {},
                  hintText: "Search",
                ),
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return listCard(context);
                }),
          ],
        ),
      ),
    );
  }
}

Widget listCard(BuildContext context) {
  TextStyle _styleBody2_1 = TextStyle(
      fontSize: fontBody2, fontWeight: FontWeight.w500, color: Color(primary));
  TextStyle _styleBody2_2 = TextStyle(
      fontSize: fontBody2, fontWeight: FontWeight.w500, color: Colors.white);
  return Container(
    padding: EdgeInsets.only(right: 15),
    height: 130,
    child: Column(
      children: [
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: 80,
                width: 80,
                child: Image.asset(
                  "assets/images/vendorimage1.png",
                  fit: BoxFit.cover,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "25 August 2021 : 10 .00 AM",
                  style: TextStyle(fontSize: 18),
                ),
                Text("#D79004321786", style: TextStyle(fontSize: 14)),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {},
              child: Text("Cancel", style: _styleBody2_1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Color(primary))),
              color: Colors.transparent,
              splashColor: Color(secondary),
            ),
            SizedBox(
              width: 8,
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {},
              child: Text("Confirm", style: _styleBody2_2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Color(primary),
              splashColor: Color(primary),
            )
          ],
        ),
      ],
    ),
  );
}
