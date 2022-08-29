import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Upload extends StatefulWidget{
  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  late File _image;

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
    }
  }

  // Future cameraImage() async {
  //   PickedFile? image = await ImagePicker().pickImage(
  //     source: ImageSource.camera,
  //     maxHeight: 240.0,
  //      maxWidth: 240.0,
  //    );
  //
  //    setState(() {
  //      _image = image;
  //    });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text('Camera'),
            onPressed: (){
              setState(() {
                _getFromGallery();
              });
            },
          ),
        ),
      ),
    );
  }
}