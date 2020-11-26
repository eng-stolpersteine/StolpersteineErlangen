import 'package:StolpersteineErlangen/Data/StolpersteinData/Gallery/GalleryImages.dart';
import 'package:StolpersteineErlangen/Data/StolpersteinData/Gallery/GalleryTags.dart';
import 'package:StolpersteineErlangen/Data/StolpersteinData/MapsLocations.dart';
import 'package:StolpersteineErlangen/Data/StolpersteinData/Names.dart';
import 'package:StolpersteineErlangen/Data/StolpersteinData/PBUrls.dart';
import 'package:StolpersteineErlangen/Providers/Providers.dart';
import 'package:StolpersteineErlangen/Screens/GalleryScreen.dart';
import 'package:StolpersteineErlangen/Screens/MainScreen.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';



class StolpersteinScreen extends StatelessWidget
{
  int index;
  BookMarksProvider _bookmarks;
  SettingsProvider _settings;
  String name;
  List<String> galleryImages;
  List<String> galleryTags;
  String location;
  String profilePic;
  String kurzText;
  String text;
  String audioUrl;
  List<String> sources;

  StolpersteinScreen(this.index)
  {
    name = stolperstein_names[index];

    galleryImages = galleryImagesStolperstein[index];
    galleryTags = galleryTagsStolperstein[index];

    _settings = SettingsProvider();
    _bookmarks = BookMarksProvider();

    location = mapsLocations[index];

    profilePic = image_urls[index];

    kurzText = "Lorem ipsum dolor sit amet, porttitor lacus magna, egestas sodales ligula, suspendisse elit natoque, sociosqu perferendis est dignissim 1 Lorem ipsum dolor sit amet, porttitor lacus magna, egestas sodales ligula, suspendisse elit natoque, sociosqu perferendis est dignissim 2 Lorem ipsum dolor sit amet, porttitor lacus magna, egestas sodales ligula, suspendisse elit natoque, sociosqu perferendis est dignissim 3 Lorem ipsum dolor sit amet, porttitor lacus magna, egestas sodales ligula, suspendisse elit natoque, sociosqu perferendis est dignissim 4";
    text = "Lorem ipsum dolor sit amet, porttitor lacus magna, egestas sodales ligula, suspendisse elit natoque, sociosqu perferendis est dignissim eros integer est, magna bibendum mi. Mi placerat tristique id, eu neque maecenas nullam, amet tellus sed sed, rhoncus nunc aliquet lectus. Condimentum vulputate quam proin lobortis vestibulum pede, ultrices mi fermentum metus eros mi bibendum, est massa libero. Nulla lorem, vivamus nulla nascetur. Urna torquent sapien dis pede potenti ut, velit tellus lacus, eget wisi interdum ornare gravida. Nullam enim in, sed vel vulputate justo ut venenatis, hendrerit sapien lectus, quis eget. Rutrum erat magnis. Faucibus malesuada ut augue rutrum metus duis, ipsum in duis pede sed, amet vel gravida integer litora vitae, urna mauris semper nam, magna diam id. Eget magna vestibulum mauris, wisi nisl mauris eget non, potenti aliquam sem dolor, vitae leo mattis a est mattis, facilisis etiam a metus tincidunt suscipit hac. Libero laoreet sed lectus, quam vel morbi lobortis scelerisque, feugiat venenatis sapien vestibulum tempus nunc velit, sit lacinia vitae nam volutpat. Curabitur nisl libero nunc mi per semper, non pulvinar. Viverra purus nulla sed risus sed, vehicula fermentum. \n Urna id ut odio conubia est ipsum, et in dolor eros sed vestibulum, libero sed donec ante consequat, senectus eu et sagittis vivamus sed, mauris gravida. Imperdiet in fusce pulvinar, condimentum quis, doloremque vestibulum pede in duis sagittis, ipsum et diam aliquam quis. Eget torquent egestas purus eget, velit etiam velit, et curabitur quisque, per libero, pellentesque labore lorem et tortor turpis. Arcu ut eleifend erat sit, leo nibh elementum cursus lorem, pellentesque aliquip ut voluptate, dui in odio dictum integer, pellentesque tempus pretium in sed. Purus tempor curabitur sed elit ipsum, tristique scelerisque bibendum tempus velit dolor, metus sed, duis fermentum tincidunt curabitur non, pretium amet orci velit pellentesque consequat. \n  Risus nam odio lacinia velit. Vehicula nec ut lacinia non, at a lacus elit placerat euismod, dolor mi maecenas nunc eget, morbi est tristique vitae, justo vel. Suscipit sit, ipsum etiam quis lacus duis maecenas vivamus, porttitor gravida. Urna habitasse laboriosam ut. Id semper rerum potenti libero gravida, lectus lectus, laoreet nulla duis. \n Vitae non maecenas elementum justo vel sagittis, accumsan nec diam mauris dui in. Lacus suspendisse imperdiet sapien molestie feugiat massa, quam pellentesque eu sodales turpis nisl eros. Ultricies diam tincidunt dui turpis mauris. Eget curabitur erat et gravida, accumsan aliquet, nisl aenean eros nulla. Sollicitudin parturient consequat, eleifend risus vel justo proin mi, pharetra neque lectus quis amet libero, elit metus amet elit pede mi auctor. Integer vestibulum, lacus nibh, vitae eget, ac ut adipiscing, vestibulum posuere mi mauris. Platea eros, orci consequat, eu risus et.";
  
    audioUrl = _settings.english ? "StolpersteinAudio/John_Mayer_-_Covered_in_Rain.mp3" : "StolpersteinAudio/Mary_Jane_-_Night_Lovell.mp3";
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
        body: Stack
        (
          children: 
          [
            Padding
            (
              padding: EdgeInsets.only(bottom: 125),
              child:MainView(context)
            ),
            AudioView()
          ],
        ),
      ),
    );
  }

  Widget MainView(BuildContext context)
  {
    return CustomScrollView
    (
      slivers: 
      [
          SliverAppBar
          (
              expandedHeight: 310,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar
              (
                background: Hero(child:Image.asset(profilePic, fit: BoxFit.fill,), tag: profilePic),
              ),
          ),

          SliverList( delegate: SliverChildListDelegate
          (
            [
              Padding
              (
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                  child: Text(kurzText, style: GoogleFonts.crimsonText(fontSize: 18, letterSpacing: 0.1,), textAlign: TextAlign.justify,),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: 
        [
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Column
            (
              children: 
              [
                ChangeNotifierProvider.value
                (
                  value: _bookmarks,
                  builder: (context, child) 
                  {
                    return MarkButton(name, Colors.black);
                  },
                ), 
                Text(_settings.english ? "Bookmark" : "Markieren", style: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.bold),)
              ],
            ),
          ),

          Column
          (
            children: 
            [
              IconButton
              (
                icon: Icon(Icons.location_on_outlined, color: Colors.black, size: 30,),
                onPressed: () => launch_maps(location),
              ),
              Text(_settings.english ? "Location" : "Ort", style: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.bold,))
            ],
          ),

  
          Column
          (
            children: 
            [
              IconButton
              (
                  icon: Icon(Icons.photo_outlined, color: Colors.black, size: 30),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => GalleryScreen(galleryImages, galleryTags, _settings.english)))
              ),
              Text(_settings.english ? "Gallery" : "Gallerie", style: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.bold),)
            ],
        ),

          Padding
          (
            padding: EdgeInsets.only(right: 25),
            child: Column
            (
              children: 
              [
                IconButton
                (
                    icon: Icon(Icons.text_snippet_outlined, color: Colors.black, size: 30),
                    onPressed: () {}
                ),
                Text(_settings.english ? "Sources" : "Quellen", style: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.bold),)
              ],
            ),
          )
        ],
      ),
    );
  }

  void launch_maps(String location) async
  {
      if(await canLaunch(location))
      {
        await launch(location);
        return;
      }
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

    audioPlayer.dispose();
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
                      activeColor: Colors.black,//Color(0xFF1492E6),
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
    preview = text.length > 50 ? text.substring(0,200) + " ..." : text + " ...";
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

