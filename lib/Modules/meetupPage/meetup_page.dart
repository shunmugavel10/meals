import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spark/Modules/meetupPage/meetup_list_page.dart';
import 'package:spark/common/colors.dart';

class MeetupPage extends StatefulWidget {
  MeetupPage({Key? key}) : super(key: key);

  @override
  _MeetupPageState createState() => _MeetupPageState();
}

class _MeetupPageState extends State<MeetupPage> {
  List<Tab> statusTitleList = [
    Tab(
      child: Row(
        children: [Text(("Restaurants"))],
      ),
    ),
    Tab(
      child: Row(
        children: [Text(("Cabs"))],
      ),
    ),
    Tab(
      child: Row(
        children: [Text(("Movie"))],
      ),
    ),
    Tab(
      child: Row(
        children: [Text(("Gifts"))],
      ),
    ),
    Tab(
      child: Row(
        children: [Text(("Rentals"))],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    
    TextStyle _styleBody2_2 = TextStyle(
        fontSize: fontBody5, fontWeight: FontWeight.w300, color: Colors.black);
    TextStyle _styleBody2 = TextStyle(
      fontSize: fontBody2,
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    );
    TextStyle _styleBody3 = TextStyle(
        fontSize: fontBody2, fontWeight: FontWeight.w600, color: Colors.pink);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black,)),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Choose Place to Meet",
          style: _styleBody2_2,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 28,
                color: Colors.black,
              )),
        ],
      ),
      body: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: new Container(
              alignment: AlignmentDirectional.center,
              child: new SafeArea(
                child: new TabBar(
                  
                    labelStyle: _styleBody2,
                    isScrollable: true,
                    indicatorColor: Colors.pink,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.pink,
                    labelPadding:
                        EdgeInsets.only(bottom: 5, right: 25, left: 25),
                    unselectedLabelStyle: _styleBody3,
                    tabs: statusTitleList),
              ),
            ),
          ),
          body: 
              
              
              TabBarView(physics: NeverScrollableScrollPhysics(), children: [
                MeetupList(),
                MeetupList(),
                MeetupList(),
                MeetupList(),
                MeetupList(),
              ]),
          
        ),
      ),
    );
  }
}
