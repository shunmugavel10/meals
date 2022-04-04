import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spark/common/colors.dart';

class Receipt extends StatelessWidget {
  const Receipt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle _styleHeading2_1 = TextStyle(
        fontSize: fontHeaderXL,
        fontWeight: FontWeight.w500,
        color: Color(primary));
    return Scaffold(
      backgroundColor: Color(secondary),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                "My Receipt",
                style: _styleHeading2_1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
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
                      "Transfer complete.",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Divider(height: 2, color: Colors.grey[800],),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 10, top: 20),
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
                              "Recipient",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text("Hailey Sanders",
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 20,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Reference number",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text("#D79004321786",
                                style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Amount sent",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    )),
                                Text(r"$ 46.09",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    )),
                              ]),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Transfer fee",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )),
                              Text(r" 0.00",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 20,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Booked on",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text("25 August 2021, 10.00 AM",
                                style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text("Payment will recieve on within 48 hours"),
            )
          ],
        ),
      ),
    );
  }
}
