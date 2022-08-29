import 'package:flutter/material.dart';
import 'package:upload_image/screens/serverupload.dart';
import 'package:upload_image/screens/upload.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upload',
      home: ImageUpload(),
    );
  }

}