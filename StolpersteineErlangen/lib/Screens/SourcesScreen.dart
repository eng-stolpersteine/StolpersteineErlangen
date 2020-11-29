
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          title: Text((english ? "Sources:" : "Quellen:") + " $name", style: GoogleFonts.roboto(),),
          flexibleSpace: appBarGradient,
        ),
        body: Center
        (
          child: Column
          (
            children: 
            [
              Padding(padding: EdgeInsets.only(top: 25), child: Text(source, style: GoogleFonts.roboto(),))
            ],
          ),
        ),
      )
    );
  }
}