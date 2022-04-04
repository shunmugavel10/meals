import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spark/common/colors.dart';

class MeetupList extends StatefulWidget {
  MeetupList({Key? key}) : super(key: key);

  @override
  _MeetupListState createState() => _MeetupListState();
}

class _MeetupListState extends State<MeetupList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                width: size.width * 0.95,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(secondary),
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search restaurants and bars...",
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Text("Restaurants and bars"),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return listMeetupCard(context);
                  }),
                  SizedBox(height: 15,),
              Container(
                height: size.height * 0.07,
                width: size.width * 0.37,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.pinkAccent,
                        Color(primary),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Book Now",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              ),
              SizedBox(height: 25,)
            ],
          ),
        ),
      ),
    );
  }
}

Widget listMeetupCard(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  TextStyle _styleBody2 = TextStyle(
    fontSize: fontBody2,
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  );
  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage("assets/images/meetup.png"),
                  height: 35,
                  width: 70,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Title(color: Colors.black, child: Text("McD Dago")),
                    Text(
                      "Jl. Ir. H. Juanda No.181, Simpang, Dago",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                          size: 18,
                        ),
                        Text(
                          "4 kilometers away",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
