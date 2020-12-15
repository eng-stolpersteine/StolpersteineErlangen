import 'package:StolpersteineErlangen/Models/HistoryModel.dart';
import 'package:StolpersteineErlangen/Providers/Providers.dart';
import 'package:StolpersteineErlangen/Screens/GalleryScreen.dart';
import 'package:StolpersteineErlangen/Screens/MainScreen.dart';
import 'package:StolpersteineErlangen/Screens/SourcesScreen.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class AllgemeinerTextScreen extends StatelessWidget
{
  BookMarksProvider _bookmarks;
  SettingsProvider _settings;

  String name;
  String bookmarksId;
  List<String> galleryImages;
  List<String> profilePics;
  String text;
  String audioUrl;
  String sources;

  AllgemeinerTextScreen(HistoryModel model)
  {
    name = model.name;

    galleryImages = model.galleryImages;

    _settings = SettingsProvider();
    _bookmarks = BookMarksProvider();

    profilePics = model.profilePics;
    text = _settings.english ? model.textEn : model.textDt;
    sources = model.sources;
    audioUrl = _settings.english ? model.audioUrlEn : model.audioUrlDt;
    bookmarksId = model.name;
  }


   Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea
    (
      top: true,
      bottom: true,
      child: Scaffold
      (
        backgroundColor: Colors.white,
        body: Center
        (
          child: Stack
          (
            children: 
            [
              Padding(child:MainView(context), padding: EdgeInsets.only(bottom: 125)),
              AudioView()
            ],
          )
        )
      )
    );
  }

  Widget MainView(BuildContext context)
  {
    List<Image> imageList = List<Image>();
    for(String url in profilePics)
      imageList.add(Image.asset(url, fit: BoxFit.fill));

    return CustomScrollView
    (
      slivers: 
      [
          SliverAppBar
          (
              expandedHeight: 310,
              backgroundColor: Colors.white,
              leading: IconButton(icon: Icon(Icons.arrow_back, color: imageList.isEmpty ? Colors.black : Colors.white), onPressed: () => Navigator.of(context).pop(),),
              flexibleSpace: FlexibleSpaceBar
              (
                background: imageList.isEmpty ? Center(child: Icon(Icons.hourglass_empty, size: 100,))
                :
                Carousel
                (
                  dotSize: 4,
                  autoplay: false,
                  images: imageList
                )
              ),
          ),

          SliverList( delegate: SliverChildListDelegate
          (
            [
              Padding
              (
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                  child: Text("", style: GoogleFonts.crimsonText(fontSize: 18,), textAlign: TextAlign.justify),
              ),

              IconRow(context),

              ExpandedText(text)
            ]
          ),
          )
      ],
    );
  }

  Widget IconRow(BuildContext context)
  {
    return Padding
    (
      padding: EdgeInsets.only(bottom: 40),
      child: Row
      (
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: 
        [
          Column
          (
            children: 
            [
              ChangeNotifierProvider.value
              (
                value: _bookmarks,
                builder: (context, child) 
                {
                  return MarkButton(bookmarksId, Colors.black);
                },
              ), 
              Text(_settings.english ? "Bookmark" : "Markieren", style: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.bold),)
            ],
          ),
  
          Column
          (
            children: 
            [
              IconButton
              (
                  icon: Icon(Icons.photo_outlined, color: Colors.black, size: 30),
                  onPressed: () => Navigator.of(context).push(PageTransition(child: GalleryScreen(galleryImages, _settings.english), type: PageTransitionType.bottomToTop))
              ),
              Text(_settings.english ? "Gallery" : "Gallerie", style: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.bold),)
            ],
          ),

          Column
          (
            children: 
            [
              IconButton
              (
                  icon: Icon(Icons.text_snippet_outlined, color: Colors.black, size: 30),
                  onPressed: () => Navigator.of(context).push(PageTransition(child: SourceScreen(name, sources, _settings.english), type: PageTransitionType.bottomToTop))
              ),
              Text(_settings.english ? "Sources" : "Quellen", style: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.bold),)
            ],
          ),
        ],
      ),
    );
  }

  Widget AudioView()
  {
    return Align
    (
      alignment: Alignment.bottomCenter,
      child: Container
      (
        height: 125,
        decoration: BoxDecoration
        (
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(28), topLeft: Radius.circular(28)),
          boxShadow: kElevationToShadow[6],
        ),
        child: AudioPlay(audioUrl)
      ),
    );
  }
}

class AudioPlay extends StatefulWidget
{
  String url;

  AudioPlay(this.url);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AudioPlayState(url);
  }
}

class AudioPlayState extends State<AudioPlay>
{
  AudioPlayer audioPlayer;
  AudioCache audioCache;
  Duration duration;
  Duration position;
  bool isPlaying;
  String audioUrl;
  bool audioAvailable;
  SettingsProvider settings;

  AudioPlayState(this.audioUrl);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    settings = SettingsProvider();
    isPlaying = false;
    audioAvailable = false;
    position = Duration(seconds: 0);
    duration = Duration(seconds: 0);
    
    if(audioUrl != "")
    {
      audioAvailable = true;
      audioPlayer = AudioPlayer();
      audioCache = AudioCache(fixedPlayer: audioPlayer);
      audioCache.load(audioUrl);
      audioPlayer.onAudioPositionChanged.listen((Duration p) {
        setState(() {

          if(position.inSeconds == duration.inSeconds)
          {
            isPlaying = false;
            position = Duration(seconds: 0);
            audioPlayer.stop();
          }
          else
          {
              position = p;
          }
        });
      });

      audioPlayer.onDurationChanged.listen((Duration d) 
      {
        setState(() {
          duration = d;
        });
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    if(audioAvailable) audioPlayer.dispose();
  }

  void handleOnPressed() {

    if(!audioAvailable)
    {
      final snackbar = SnackBar(content: Text(settings.english ? "No Audio Available!" : "Kein Audio Verfügbar!"), duration: Duration(seconds: 3));
      Scaffold.of(context).showSnackBar(snackbar);
      return;
    }

    setState(() {
      if (!isPlaying) {
        audioCache.play(audioUrl);
      } else {
        audioPlayer.pause();
      }

      isPlaying = !isPlaying;
    });
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    audioPlayer.seek(newDuration);
  }

  String time(Duration duration) {

    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children: 
      [
        IconButton
        (
            icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow, size: 40),
            onPressed: () => handleOnPressed(),
        ),

        Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
              Container
              (
                  width: 300,
                  child: Slider
                  (
                    value: position.inSeconds.toDouble(),
                    max: duration.inSeconds.toDouble(),
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey[300],
                    onChanged: (double value) => setState((){seekToSecond(value.toInt());}),
                  ),
              ),

              Row
              (
                children: 
                [
                  Padding
                  (
                    padding: EdgeInsets.only(right: 180),
                    child: Text(time(position), style: GoogleFonts.roboto(fontSize: 16),),
                  ),
                  Text(time(duration), style: GoogleFonts.roboto(fontSize: 16),),
                ],
              ),
          ],
        )

      ],
    );
  }
}

class ExpandedText extends StatefulWidget
{
  String text;

  ExpandedText(this.text);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExpandedTextState(text);
  }
}

class ExpandedTextState extends State<ExpandedText> with SingleTickerProviderStateMixin
{
  bool isExpanded;
  String text;
  String preview;

  ExpandedTextState(this.text);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isExpanded = false;

    preview = text.length > 50 ? text.substring(0,200) + " ..." : text + (text == "" ? "" : " ...");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //animationController.dispose();
  }

   void handleOnPressed() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column
      (
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
        [
            Text
            (
              isExpanded ? text : preview,
              textAlign: TextAlign.justify,
              style: GoogleFonts.crimsonText
              (
                fontSize: 18,
                letterSpacing: 0.1,
                color: Colors.black.withOpacity(isExpanded ? 1.0 : 0.4)
              ),
            ),

            IconButton
            (
                icon: Icon(isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down),
                iconSize: 30,
                onPressed: () => handleOnPressed(),
            )
        ],
      ),
    );
  }
}
