import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFeildContainer extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final ValueChanged<String> onChanged;
  const SearchFeildContainer({
    Key? key,
    this.icon = Icons.mail_outline,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
   margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 7),
      width: size.width * 0.9,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey
          ),
          borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
