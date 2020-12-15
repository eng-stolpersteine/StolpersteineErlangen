
import 'package:StolpersteineErlangen/Data/FilterData.dart';
import 'package:StolpersteineErlangen/Data/History.dart';
import 'package:StolpersteineErlangen/Data/Stolpersteine.dart';
import 'package:StolpersteineErlangen/Models/HistoryModel.dart';
import 'package:StolpersteineErlangen/Models/StolpersteinModel.dart';
import 'package:StolpersteineErlangen/Providers/Providers.dart';
import 'package:StolpersteineErlangen/Screens/AllgemeinerText/AllgemeinerTextScreen.dart';
import 'package:StolpersteineErlangen/Screens/Stolperstein/StolpersteinScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
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
  SettingsProvider _settings;
  BookMarksProvider _bookmarks;
  List<Stolperstein> stolpersteine;

  MainScreenState(this._tabController);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _settings = SettingsProvider();
    _bookmarks = BookMarksProvider();
    
    _tabController.index = 1;
    initStolpersteine();
  }

  void initStolpersteine()
  {
    stolpersteine = new List<Stolperstein>();
    
    List<String> activeFilters = List<String>();

    for(String filter in deportation_filters)
      if(FilterProvider.getFilterValue(filter)) activeFilters.add(filter);

    for(String filter in location_filters)
      if(FilterProvider.getFilterValue(filter)) activeFilters.add(filter);

    for(String filter in family_filters)
      if(FilterProvider.getFilterValue(filter)) activeFilters.add(filter);

    for(StolpersteinModel model in stolpersteinModels)
    {
      if(model.filters.any((element) => activeFilters.toSet().contains(element))) 
        stolpersteine.add(Stolperstein(model));
    }

    if(stolpersteine.isEmpty)
    {
      for(StolpersteinModel model in stolpersteinModels)
        stolpersteine.add(Stolperstein(model));
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
    return ListView.builder
    (
      itemExtent: 90,
      itemCount: historyModels.length,
      itemBuilder: (context, index) => HistoryText(historyModels[index]),
    );
  }
  
  Widget BookMarks()
  {
    return Consumer<BookMarksProvider>
    (
      builder: (context, marks, child) 
      {
        List<Widget> favItems = new List<Widget>();

        for(StolpersteinModel model in stolpersteinModels)
          if(BookMarksProvider.isFavorite(model.name)) favItems.add(Stolperstein(model));

        for(HistoryModel model in historyModels)
          if(BookMarksProvider.isFavorite(model.name)) favItems.add(HistoryText(model));

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
  StolpersteinModel model;
  String _titel;
  String _firstName;
  String _lastName;
  String _imgUrl;

  Stolperstein(this.model)
  {
    _titel = model.name;
    List<String> name = _titel.split(" ");
    _firstName = name[0];
    _lastName = name[1];
    _imgUrl = model.profilePics.isEmpty ? "" : model.profilePics[0];
  }

  Widget profilePic()
  {
    return Container
    (
      width: 60,
      height: 60,
      child: DecoratedBox
      (
        decoration: BoxDecoration
        (
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(_imgUrl), fit: BoxFit.fill),
        ),
      )
    );
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
            leading: _imgUrl == "" ? Icon(Icons.person, size: 35, ) : profilePic(),
            onTap: () => Navigator.of(context).push(PageTransition(child: StolpersteinScreen(model), type: PageTransitionType.bottomToTop))
          ),
        ),
    );
  }
}

class HistoryText extends StatelessWidget
{
  HistoryModel model;
  String _titel;
  String bookMarksID;
  String _imgUrl;
  SettingsProvider _settings;

  HistoryText(this.model)
  {
    _settings = SettingsProvider();
    _titel = _settings.english ? model.nameEn : model.name;
    bookMarksID = model.name;
    _imgUrl = model.profilePics.isEmpty ? "" : model.profilePics[0];
  }

  Widget profilePic()
  {
    return Container
    (
      width: 60,
      height: 60,
      child: _imgUrl == "" ? Icon(Icons.hourglass_empty, size: 35)
      :
      DecoratedBox
      (
        decoration: BoxDecoration
        (
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(_imgUrl), fit: BoxFit.fill),
        ),
      ) 
    );
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
            trailing: MarkButton(bookMarksID, Colors.grey),
            leading: profilePic(),
            onTap: () => Navigator.of(context).push(PageTransition(child: AllgemeinerTextScreen(model), type: PageTransitionType.bottomToTop)),
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