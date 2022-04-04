import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:spark/Modules/landingPage.dart';
import 'package:spark/common/colors.dart';

class Transactions extends StatefulWidget {
  Transactions({Key? key}) : super(key: key);

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    TextStyle _styleBody2_2 = TextStyle(
        fontSize: fontBody3, fontWeight: FontWeight.w300, color: Colors.black);
    return Scaffold(
     appBar: AppBar(
       leading: IconButton(
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => LandingPage()));
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black,)),
        backgroundColor: Color(secondary),
        centerTitle: true,
        elevation: 0,
        title: Text(
                      "Transactions",
                      style: _styleBody2_2,
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_none_sharp,
                          size: 28,
                          color: Colors.black,
                        )),
                    ],
      ),
      backgroundColor: Color(secondary),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "from",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border: Border.all(color: Colors.black26)),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: DateTimePicker(
                            type: DateTimePickerType.date,
                            dateMask: 'd MMM, yyyy',
                            initialValue: DateTime.now().toString(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                            icon: Icon(Icons.event),
                            selectableDayPredicate: (date) {
                              // Disable weekend days to select from the calendar
                              if (date.weekday == 6 || date.weekday == 7) {
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
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "To",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border: Border.all(color: Colors.black26)),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: DateTimePicker(
                            type: DateTimePickerType.date,
                            dateMask: 'd MMM, yyyy',
                            initialValue: DateTime.august.toString(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                            icon: Icon(Icons.event),
                            selectableDayPredicate: (date) {
                              // Disable weekend days to select from the calendar
                              if (date.weekday == 6 || date.weekday == 7) {
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
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return listTransactionCard(context);
                  })
            ],
          ),
        ),
      ),
    );
  }
}

Widget listTransactionCard(BuildContext context) {

  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: Card(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transaction ID",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text("5624586958", style: TextStyle(fontSize: 16)),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Receive Amount",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(r"$ 560", style: TextStyle(fontSize: 16)),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Paid Amount",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(r"$ 565", style: TextStyle(fontSize: 16)),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "12/02/2021",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text("completed", style: TextStyle(fontSize: 16, color: Colors.green)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
