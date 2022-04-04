import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spark/Modules/landingPage.dart';
import 'package:spark/common/colors.dart';
import 'package:spark/common/search_field_container.dart';

class Product extends StatefulWidget {
  Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  TextStyle _styleBody2_2 = TextStyle(
      fontSize: fontBody3, fontWeight: FontWeight.w300, color: Colors.black);
  @override
  Widget build(BuildContext context) {
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
          "Products",
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(primary),
        child: Icon(Icons.add),
        onPressed: () {
          addProduct(context);
        },
      ),
      backgroundColor: Color(secondary),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
  SearchFeildContainer(
                  onChanged: (value) {},
                  hintText: "Search",
                ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return listProductCard(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

Widget listProductCard(BuildContext context) {
 Size size = MediaQuery.of(context).size;
  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage("assets/images/product1.png"),
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Flower Base Gift 4"),
                        Text(
                          "Flower",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.22,
                    ),
                    Text(
                      "₹ 120",
                      style: TextStyle(
                          color: Color(primary), fontWeight: FontWeight.w900),
                    )
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

addProduct(context) {
   TextStyle _styleBody2_1 = TextStyle(
      fontSize: fontBody2, fontWeight: FontWeight.w500, color: Color(primary));
      TextStyle _styleBody2_2 = TextStyle(
      fontSize: fontBody2, fontWeight: FontWeight.w500, color: Colors.white);
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 0.82,
              height: MediaQuery.of(context).size.width * 1.3,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Text(
                      "Add new products",
                      style: TextStyle(fontSize: 20),
                    )),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Product name",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40,
                      child: TextField(
                  
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Product  description",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Product price",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40,
                      child: TextField(
                       
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Product price",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(border: Border.all(
                    color: Colors.grey,
                    width: 0.8,
                  )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton(
                          underline: Container(),
                          isExpanded: true,
                        hint: Text("Flowers"),
                        items: [
                          
                        ],),
                      )
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Product Images"),
                        // ignore: deprecated_member_use
                        FlatButton(
                         
                          onPressed: () {
                             print("Uploaded");
                          },
                          child: Row(
                children: [
                  Icon(Icons.upload_file_outlined, color: Colors.white,),
                  SizedBox(width: 5,),
                  Text("Upload", style: _styleBody2_2),
                ],
                          ),
                           shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Color(primary),
              splashColor: Color(primary),
                      ),
                      ],
                    ),
                     SizedBox(
                      height: 50,
                    ),
                    Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ignore: deprecated_member_use
            FlatButton(
              minWidth: 120,
              onPressed: () {
                print("Cancelled");
              },
              child: Text("Cancel", style: _styleBody2_1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Color(primary))),
              color: Color(secondary),
              splashColor: Color(secondary),
            ),

            // ignore: deprecated_member_use
            FlatButton(
              minWidth: 120,
              onPressed: () {
                 print("Saved");
              },
              child: Text("Save", style: _styleBody2_2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Color(primary),
              splashColor: Color(primary),
            )
          ],
        ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
