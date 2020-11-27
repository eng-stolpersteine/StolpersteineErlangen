import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GalleryScreen extends StatefulWidget
{
    List<String> images;
    bool english;

    GalleryScreen(this.images, this.english);

    @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GalleryScreenState(images, english);
  }
}

class GalleryScreenState extends State<GalleryScreen>
{
    List<String> images;
    bool english;
    int tilestate = 0;

    GalleryScreenState(this.images, this.english);

  Container topBar = 
    Container
    (
      decoration: BoxDecoration
      (
        color: Colors.black
      ),
    );

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<Widget> imageList = List<Widget>();
    for(String url in images)
      imageList.add(Image.asset(url, fit: BoxFit.fill));

    return Scaffold
    (
      backgroundColor: Colors.black,
      appBar: AppBar
      (
          title: Text(english ? "Gallery" : "Gallerie"),
          flexibleSpace: topBar,
      ),
      body: Center
      (
          child: images.isEmpty ? Text(english ? "No Images Available" : "Keine Bilder Verfügbar", style: GoogleFonts.roboto(color: Colors.white, fontSize: 16)) 
          : SizedBox
          (
            height: 310,
            width: 310,
            child: Carousel
            (
              dotSize: 5,
              autoplay: false,
              images: imageList,
            ),
          ),
      ),  
    );
  }
}