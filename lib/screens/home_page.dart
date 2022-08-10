import 'package:edges_img/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../colors/colors.dart';

class Home_Page extends StatefulWidget {
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to Pick Image: ${e}');
    }
  }

  Future takeImage() async {
    await ImagePicker().pickImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('--'),
          backgroundColor: kprimary,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 210,
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          color: kprimary,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(36),
                            bottomRight: Radius.circular(36),
                          )),
                    ),
                    Positioned(
                      bottom: -15,
                      left: 0,
                      right: 0,
                      child: image != null
                          ? Image.file(
                              image!,
                              width: 160,
                              height: 160,
                              fit: BoxFit.cover,
                            )
                          : FlutterLogo(
                              size: 160,
                            ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                  label: Text('Open Gallery'),
                  icon: Icon(Icons.image_rounded),
                  onPressed: () => pickImage()),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                  label: Text('Use Camera!'),
                  icon: Icon(Icons.camera_alt),
                  onPressed: () => takeImage()),
            ],
          ),
        ));
  }
}
