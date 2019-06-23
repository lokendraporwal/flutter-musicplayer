import 'package:flutter/material.dart';
import 'package:musicplayer/my_app.dart';
import 'package:musicplayer/utils/themes.dart';

void main(){
  runApp(new MyMaterialApp());
}
class MyMaterialApp extends StatefulWidget {
  @override
  _MyMaterialAppState createState() => _MyMaterialAppState();
}

class _MyMaterialAppState extends State<MyMaterialApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Music Player",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: new MyApp(),
    );
  }
}

