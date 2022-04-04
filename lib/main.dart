import 'package:flutter/material.dart';
import 'package:spark/Modules/LoginPage/login.dart';
import 'package:spark/Modules/LoginPage/verify_email_page.dart';
import 'package:spark/Modules/Profile/profile.dart';
import 'package:spark/Modules/Transactions/transactions.dart';
import 'package:spark/Modules/Vendor/vendor.dart';
import 'package:spark/Modules/meetupPage/meetup_page.dart';
import 'package:spark/Modules/receipt/reciept.dart';
import 'package:spark/common/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red,),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    LoginPage();
  
  }
}