import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DropdownCategoryItem extends StatefulWidget {
  @override
  _DropdownCategoryItemState createState() => _DropdownCategoryItemState();
}

class _DropdownCategoryItemState extends State<DropdownCategoryItem> {
  String dropdownvalue = 'Category type';
  var items = ['Category type', 'Resturent', 'Product gifts', 'rental'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
      child: DropdownButton(
        underline: SizedBox(),
        hint: Text("Category type"),
        value: dropdownvalue,
        icon: Icon(Icons.keyboard_arrow_down),
        items: items.map((String items) {
          return DropdownMenuItem(value: items, child: Text(items));
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        },
      ),
    );
  }
}
