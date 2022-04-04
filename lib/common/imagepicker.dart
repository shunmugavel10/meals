import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:spark/common/colors.dart';


class ImagePickerField extends StatefulWidget {
  ImagePickerField({Key? key}) : super(key: key);

  @override
  _ImagePickerFieldState createState() => _ImagePickerFieldState();
}

class _ImagePickerFieldState extends State<ImagePickerField> {
final picker = ImagePicker();
   File? _image;

   Future getImage() async {
     final image = await picker.getImage(source: ImageSource.gallery);
if (image != null) {
      return File(image.path);
    } else {
      print('No image selected.');
    }
  }



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
      child:
      
       Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Text("Upload Image"),
        FlatButton(
          color: Color(secondary),
          onPressed: (){
            getImage();
          }, 
          child: Row(
            
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(Icons.drive_folder_upload_outlined),
            ),
            Text("Upload Image"),
          ],
        ))
      ],
    ));
  }
}