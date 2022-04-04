import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:easy_localization/easy_localization.dart';
import 'package:spark/common/colors.dart';


Widget textField(BuildContext context,String title,hint,error,controller){
  TextStyle _styleBody1 =TextStyle(fontSize: ScreenUtil().setSp(fontBody2),
      fontWeight: FontWeight.w900,color:Color(colorText2));
  TextStyle _styleBody2_2 =TextStyle(fontSize: ScreenUtil().setSp(fontBody2),
      fontWeight: FontWeight.w600,color:Color(colorText1));
  TextStyle _styleBody2_3 =TextStyle(fontSize: ScreenUtil().setSp(fontBody2),
      letterSpacing: 1.0, fontWeight: FontWeight.w400,color:Color(colorText2));

  return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title,style: _styleBody1,),
      TextFormField(
        controller:controller,
        cursorColor: Color(secondary),
        textAlign: TextAlign.left,
        keyboardType: TextInputType.text,
        style:_styleBody2_2,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: _styleBody2_3,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green,width: 2,style: BorderStyle.solid),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey,width:1,style: BorderStyle.solid),
          ),
        ),
        enableInteractiveSelection: true,
        validator: (val) {
          if (val!.isEmpty) {
            return (error);
          }
          return null;
        },
      ),
    ],);
}

Widget numberField(BuildContext context,String title,hint,error,controller){
  TextStyle _styleBody1 =TextStyle(fontSize: ScreenUtil().setSp(fontBody2),
      fontWeight: FontWeight.w900,color:Color(colorText2));
  TextStyle _styleBody2_2 =TextStyle(fontSize: ScreenUtil().setSp(fontBody2),
      fontWeight: FontWeight.w600,color:Color(colorText1));
  TextStyle _styleBody2_3 =TextStyle(fontSize: ScreenUtil().setSp(fontBody2),
      letterSpacing: 1.0, fontWeight: FontWeight.w400,color:Color(colorText2));

  return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title,style: _styleBody1,),
      TextFormField(
        controller:controller,
        cursorColor: Color(secondary),
        textAlign: TextAlign.left,
        keyboardType: TextInputType.numberWithOptions(),
        style:_styleBody2_2,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: _styleBody2_3,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green,width: 2,style: BorderStyle.solid),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey,width:1,style: BorderStyle.solid),
          ),
        ),
        enableInteractiveSelection: true,
        validator: (val) {
          if (val!.isEmpty) {
            return (error);
          }
          return null;
        },
      ),
    ],);
}



