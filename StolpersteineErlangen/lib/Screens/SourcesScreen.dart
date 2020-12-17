
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SourceScreen extends StatelessWidget
{
  String name;
  String source;
  bool english;

  SourceScreen(this.name, this.source, this.english);

  @override
  Widget build(BuildContext context) {

    Container appBarGradient = 
    Container
    (
      decoration: BoxDecoration
      (
        gradient: LinearGradient
        (
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: 
          [
            Color(0xFF462523),
            Color(0xFFCB9B51),
            Color(0xFFF6E27A),
            Color(0xFFF6E27A),
            Color(0xFFCB9B51),
            Color(0xFF462523),
          ],
        ),
      ),
    );
    // TODO: implement build
    return SafeArea
    (
      top: true,
      bottom: true,
      child: Scaffold
      (
        backgroundColor: Colors.white,
        appBar: AppBar
        (
          centerTitle: true,
          title: Text((english ? "Sources:" : "Quellen:") + " $name", style: TextStyle(fontFamily: "Roboto")),
          flexibleSpace: appBarGradient,
        ),
        body: Center
        (
          child: Column
          (
            children: 
            [
              Padding(padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15), child: Text(source, style: TextStyle(fontFamily: "Roboto"),))
            ],
          ),
        ),
      )
    );
  }
}