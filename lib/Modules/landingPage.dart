import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:spark/Modules/Profile/profile.dart';
import 'package:spark/Modules/Transactions/transactions.dart';
import 'package:spark/Modules/Vendor/vendor.dart';
import 'package:spark/Modules/product/product.dart';
import 'package:spark/common/colors.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final List  tab=  [VendorPage(), Transactions(),Product(),Profile()];
  int _currentindex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: BottomNavigationBar(
          elevation: 2,
          backgroundColor: Colors.white,
          currentIndex: _currentindex,
          type: BottomNavigationBarType.fixed,
          iconSize: 20,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          selectedItemColor: Color(primary),
          onTap: (int index) {
            setState(() {
                      _currentindex = index;
                    });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(FeatherIcons.home),
                // ignore: deprecated_member_use
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                )),
            BottomNavigationBarItem(
              
                icon: Icon(
                  FeatherIcons.list,
                ),
                // ignore: deprecated_member_use
                title: Text(
                  "Transaction",
                  style: TextStyle(color: Colors.black),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  FeatherIcons.tag,
                ),
                // ignore: deprecated_member_use
                title: Text("Products", style: TextStyle(color: Colors.black))),
                BottomNavigationBarItem(
                icon: Icon(
                  FeatherIcons.users,
                ),
                // ignore: deprecated_member_use
                title: Text("Profile", style: TextStyle(color: Colors.black))),
          ],
        ),
      ),
    body: tab[_currentindex],
    );
  }
}

