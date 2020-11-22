import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class GalleryScreen extends StatefulWidget
{
    List<String> images;
    List<String> tags;
    bool english;

    GalleryScreen(this.images, this.tags, this.english);

    @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GalleryScreenState(images, tags, english);
  }
}

class GalleryScreenState extends State<GalleryScreen>
{
    List<String> images;
    List<String> tags;
    bool english;
    int tilestate = 0;

    GalleryScreenState(this.images, this.tags, this.english);

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
          child: Stack
          (
            children:
            [
              gallery(),
              Align
              (
                alignment: Alignment.bottomCenter,
                child: Padding
                (
                  padding: EdgeInsets.only(top: 15, bottom: 80),
                  child: Text(tags[tilestate], style: GoogleFonts.roboto(fontSize: 18, color: Colors.white),),
                ),
              )
            ],
          )
      ),  
    );
  }

   Widget gallery() {
    return Container(
      child: PhotoViewGallery.builder(
      scrollPhysics: const BouncingScrollPhysics(),
      builder: (BuildContext context, int index) {
        return PhotoViewGalleryPageOptions(
          imageProvider: AssetImage(images.elementAt(index)),
          initialScale: PhotoViewComputedScale.contained * 0.8,
        );
      },
      itemCount: images.length,
      loadingBuilder: (context, progress) => Center(
           child: Container(
             width: 20.0,
             height: 20.0,
             child: CircularProgressIndicator(
               value: progress == null
                   ? null
                   : progress.cumulativeBytesLoaded /
                       progress.expectedTotalBytes,
             ),
           ),
         ),
         onPageChanged: (int index){
           setState(() {
             tilestate = index;
           });
         },
    ),
    );
  }
}