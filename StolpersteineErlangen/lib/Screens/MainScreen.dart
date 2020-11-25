
import 'package:StolpersteineErlangen/Data/HistoryData/Names.dart';
import 'package:StolpersteineErlangen/Data/HistoryData/PBUrls.dart';
import 'package:StolpersteineErlangen/Data/StolpersteinData/Names.dart';
import 'package:StolpersteineErlangen/Data/StolpersteinData/PBUrls.dart';
import 'package:StolpersteineErlangen/Providers/Providers.dart';
import 'package:StolpersteineErlangen/Screens/AllgemeinerText/AllgemeinerTextScreen.dart';
import 'package:StolpersteineErlangen/Screens/Stolperstein/StolpersteinScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget
{
  TabController tabController;
  MainScreen(this.tabController);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainScreenState(tabController);
  }
}

class MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin
{
  TabController _tabController;
  FilterProvider _filter;
  SettingsProvider _settings;
  BookMarksProvider _bookmarks;
  List<Stolperstein> stolpersteine;

  MainScreenState(this._tabController);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _filter = FilterProvider();
    _settings = SettingsProvider();
    _bookmarks = BookMarksProvider();
    
    _tabController.index = 1;
    initStolpersteine();
  }

  void initStolpersteine()
  {
    stolpersteine = new List<Stolperstein>();
    List<bool> filterValues = FilterProvider.filterValues;

    if(filterValues[4] || filterValues[12] || filterValues[13])
    {
        stolpersteine.add(Stolperstein(0));
    }

    if(filterValues[4] || filterValues[9] || filterValues[13])
    {
        stolpersteine.add(Stolperstein(1));
    }

    if(filterValues[4] || filterValues[9] || filterValues[13])
    {
        stolpersteine.add(Stolperstein(2));
    }

    if(filterValues[4] || filterValues[12] || filterValues[13])
    {
        stolpersteine.add(Stolperstein(3));
    }

    if(filterValues[4] || filterValues[9] || filterValues[14])
    {
      stolpersteine.add(Stolperstein(4));
    }

    if(filterValues[4] || filterValues[9] || filterValues[14])
    {
      stolpersteine.add(Stolperstein(5));
    }

    if(filterValues[4] || filterValues[9] || filterValues[14])
    {
      stolpersteine.add(Stolperstein(6));
    }

    if(filterValues[4] || filterValues[9] || filterValues[14])
    {
      stolpersteine.add(Stolperstein(7));
    }

    if(filterValues[4] || filterValues[9] || filterValues[14])
    {
      stolpersteine.add(Stolperstein(8));
    }

    if(filterValues[2] || filterValues[5] || filterValues[15])
    {
      stolpersteine.add(Stolperstein(9));
    }

    if(filterValues[4] || filterValues[9] || filterValues[15])
    {
      stolpersteine.add(Stolperstein(10));
    }

    if(filterValues[3] || filterValues[9] || filterValues[16])
    {
      stolpersteine.add(Stolperstein(11));
    }

    if(filterValues[4] || filterValues[9] || filterValues[17])
    {
      stolpersteine.add(Stolperstein(12));
    }

    if(filterValues[1] || filterValues[11] || filterValues[18])
    {
      stolpersteine.add(Stolperstein(13));
    }

    if(filterValues[4] || filterValues[9] || filterValues[19])
    {
      stolpersteine.add(Stolperstein(14));
    }

    if(filterValues[4] ||filterValues[9] || filterValues[20])
    {
      stolpersteine.add(Stolperstein(15));
    }

    if(filterValues[4] || filterValues[9] || filterValues[20])
    {
      stolpersteine.add(Stolperstein(16));
    }

    if(filterValues[4] || filterValues[9] || filterValues[20])
    {
      stolpersteine.add(Stolperstein(17));
    }

    if(filterValues[4] || filterValues[5] ||filterValues[21])
    {
      stolpersteine.add(Stolperstein(18));
    }

    if(filterValues[4] ||filterValues[5] || filterValues[21])
    {
      stolpersteine.add(Stolperstein(19));
    }

    if(filterValues[0] || filterValues[5] ||filterValues[22])
    {
      stolpersteine.add(Stolperstein(20));
    }

    if(filterValues[4] ||filterValues[7] || filterValues[23])
    {
      stolpersteine.add(Stolperstein(21));
    }

    if(filterValues[3] ||filterValues[9] ||filterValues[24])
    {
      stolpersteine.add(Stolperstein(22));
    }

    if(filterValues[3] || filterValues[9] || filterValues[24])
    {
      stolpersteine.add(Stolperstein(23));
    }

    if(filterValues[4] || filterValues[6] || filterValues[25])
    {
      stolpersteine.add(Stolperstein(24));
    }

    if(filterValues[4] ||filterValues[10] || filterValues[26])
    {
      stolpersteine.add(Stolperstein(25));
    }

    if(filterValues[4] ||filterValues[8] ||filterValues[26])
    {
      stolpersteine.add(Stolperstein(26));
    }

    if(stolpersteine.isEmpty)
    {
      for(int i = 0; i <  27; i++)
        stolpersteine.add(Stolperstein(i));
    }
  }

  Widget Stolpersteine()
  {
   return ListView
    (
      children: stolpersteine,
      itemExtent: 90,
    );
  }

  Widget AllgemeineTexte()
  {
    return ListView
    (
      itemExtent: 90,
      children: 
      [
          HistoryText(0),
          HistoryText(1),
          HistoryText(2),
          HistoryText(3),
      ],
    );      
  }
  
  Widget BookMarks()
  {
    return Consumer<BookMarksProvider>
    (
      builder: (context, marks, child) 
      {
        List<Widget> favItems = new List<Widget>();

        for(String name in stolperstein_names)
          if(BookMarksProvider.isFavorite(name)) favItems.add(Stolperstein(stolperstein_names.indexOf(name)));

        for(String name in historie_names)
          if(BookMarksProvider.isFavorite(name)) favItems.add(HistoryText(historie_names.indexOf(name)));

        if(favItems.isEmpty)
        {
          return Center
          (
            child: Text(_settings.english ? "No Items Bookmarked" : "Keine Texte markiert", style: GoogleFonts.roboto(color: Colors.grey[400], fontSize: 16))
          );
        }

        return ListView
        (
            itemExtent: 90,
            children: favItems,
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider.value
    (
      value: _bookmarks,
      builder: (context, child) 
      {
        return TabBarView
        (
          controller: _tabController,
          children: 
          [
            AllgemeineTexte(),
            Stolpersteine(),
            BookMarks()
          ],
        );  
      },
    );
  }
}

class Stolperstein extends StatelessWidget
{
  String _titel;
  String _firstName;
  String _lastName;
  String _imgUrl;
  int _index;

  Stolperstein(this._index)
  {
    _titel = stolperstein_names[_index];
    List<String> name = _titel.split(" ");
    _firstName = name[0];
    _lastName = name[1];
    _imgUrl = image_urls[_index];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card
    (
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 6,
        child: Center
        (
          child: ListTile
          (
            title: Text(_lastName, style: GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.bold)),
            subtitle: Text(_firstName, style: GoogleFonts.roboto(),),
            trailing: MarkButton(_titel, Colors.grey),
            leading: Container
            (
                width: 60,
                height: 60,
                child: Hero
                (
                  tag: _imgUrl,
                  child: DecoratedBox
                  (
                    decoration: BoxDecoration
                    (
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(_imgUrl), fit: BoxFit.fill),
                    ),
                  )
                ),
            ),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => StolpersteinScreen(_index)))
          ),
        ),
    );
  }
}

class HistoryText extends StatelessWidget
{
  int _index;

  String _titel;
  String _imgUrl;

  HistoryText(this._index)
  {
    _titel = historie_names[_index];
    _imgUrl = historie_imgUrls[_index];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card
    (
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 6,
        child: Center
        (
          child: ListTile
          (
            title: Text(_titel, style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold)),
            trailing: MarkButton(_titel, Colors.grey),
            leading: Container
            (
                width: 60,
                height: 60,
                decoration: BoxDecoration
                (
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(_imgUrl), fit: BoxFit.fill),
                ),
            ),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => AllgemeinerTextScreen(_index))),
          ),
        ),
    );
  }
}

class MarkButton extends StatelessWidget
{
  bool isFavorite;
  Color color;
  String titel;

  BookMarksProvider _bookmarks;

  MarkButton(this.titel, this.color);

  @override
  Widget build(BuildContext context) 
  {
    _bookmarks = Provider.of<BookMarksProvider>(context);
    // TODO: implement build
    return Consumer<BookMarksProvider>
    (
      builder: (context, value, child) 
      {
        isFavorite = BookMarksProvider.isFavorite(titel);

        return IconButton
        (
          icon: isFavorite ? Icon(Icons.bookmark, color: Colors.yellow[700], size: 30,) : Icon(Icons.bookmark_border_outlined, color: color, size: 30),
          onPressed: () => isFavorite ? _bookmarks.remove(titel) : _bookmarks.add(titel)
        );
      },
    );
  }
}

















