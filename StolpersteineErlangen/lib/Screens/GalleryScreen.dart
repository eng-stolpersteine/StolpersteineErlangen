import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:provider/provider.dart';

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
    ImageIndexProvider indexProvider;

    GalleryScreenState(this.images, this.english)
    {
      indexProvider = ImageIndexProvider();
      images.removeWhere((element) => element == "");
    }

  Container topBar = 
    Container
    (
      decoration: BoxDecoration
      (
        color: Colors.black
      ),
    );

  Widget IndexDisplay(int maxLength)
  {
    return Consumer<ImageIndexProvider>
    (
      builder: (context, value, child) => Center(child: Text("${value.currentIndex} / $maxLength",),),
    );
  }

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider.value
    (
      value: indexProvider,
      builder: (context, child) => Scaffold
      (
        backgroundColor: Colors.black,
        appBar: AppBar
        (
            title: images.isEmpty ? 
              Text(english ? "Gallery" : "Gallerie") 
              :
              Row(children: [Text(english ? "Gallery" : "Gallerie"), IndexDisplay(images.length)], mainAxisAlignment: MainAxisAlignment.spaceBetween,),
            flexibleSpace: topBar,
        ),
        body: Center(child: GalleryView(images, english))  
      )
    );
  }
}

class ImageIndexProvider extends ChangeNotifier
{
  int _index = 0;

  int get currentIndex => _index + 1;

  void updateIndex(int newIndex) { _index = newIndex; notifyListeners(); }
}

class GalleryView extends StatelessWidget
{
  List<String> image_urls;
  bool english;
  ImageIndexProvider indexProvider;

  GalleryView(this.image_urls, this.english);

  Widget View(BuildContext context)
  {
    ImageIndexProvider indexProvider = Provider.of<ImageIndexProvider>(context);
    return Container
    (
      child: PhotoViewGallery.builder(
        scrollPhysics: const BouncingScrollPhysics(),
        builder: (BuildContext context, int index)
        {
          return PhotoViewGalleryPageOptions
          (
            imageProvider: AssetImage(image_urls[index]),
            initialScale: PhotoViewComputedScale.contained * 0.8,
          );
        },
        itemCount: image_urls.length,
        loadingBuilder: (context, event) => Center(
          child: Container(
            width: 20.0,
            height: 20.0,
            child: CircularProgressIndicator(
              value: event == null
                  ? 0
                  : event.cumulativeBytesLoaded / event.expectedTotalBytes,
            ),
          ),
        ),
        onPageChanged: (index) => indexProvider.updateIndex(index), 
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return image_urls.isEmpty ? 
        Text(english ? "No Images Available" : "Keine Bilder Verfügbar", style: GoogleFonts.roboto(color: Colors.white, fontSize: 16)) 
        :
        View(context);
  }
}