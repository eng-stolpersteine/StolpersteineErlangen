import 'package:StolpersteineErlangen/Data/HiveBoxes.dart';
import 'package:StolpersteineErlangen/Data/PrivacyNotice.dart';
import 'package:StolpersteineErlangen/Providers/Providers.dart';
import 'package:StolpersteineErlangen/Screens/FilterScreen.dart';
import 'package:StolpersteineErlangen/Screens/MainScreen.dart';
import 'package:StolpersteineErlangen/Screens/Settings/SettingsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:StolpersteineErlangen/Data/SettingsData/ChooseLanguage.dart';
import 'package:StolpersteineErlangen/Data/SettingsData/Impress.dart';
import 'package:url_launcher/url_launcher.dart';

void main() async
{
  await Hive.initFlutter();
  await Hive.openBox(settingsBox);
  await Hive.openBox(filterBox);
  await Hive.openBox(favoritesBox);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) => runApp(StolpersteinApp()));
}

class StolpersteinApp extends StatelessWidget
{
  Box _settingsBox;
  bool _isFirstStart;

  StolpersteinApp()
  {
    _settingsBox = Hive.box(settingsBox);
    _isFirstStart = _settingsBox.get("FirstStart", defaultValue: true);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      color: Colors.grey[300],
      home: _isFirstStart ? ChooseLanguage() : Screens()   
    );
  }
}

class ChooseLanguage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return ChooseLanguageState();
  }
}

class ChooseLanguageState extends State<ChooseLanguage> with SingleTickerProviderStateMixin
{
  SettingsProvider _settings;
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _settings = SettingsProvider();

    _tabController = TabController(length: 2, vsync: this);
    _tabController.index = 1;
    _tabController.addListener
    ( 
      () 
      {
        _tabController.index == 0 ? _settings.setLanguageGerman() : _settings.setLanguageEnglish();
      }
    );
  }

  Widget tabChanger()
  {
    return Padding
    (
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container
      (
        height: 40,
        decoration: BoxDecoration
        (
            color: Colors.grey[100],
            borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: TabBar
        (
            controller: _tabController,
            labelStyle: TextStyle(fontFamily: "Roboto", color: Colors.black, fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontFamily: "Roboto", color: Colors.black),
            indicator: BoxDecoration
            (
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: kElevationToShadow[2]
            ),
            tabs: 
            [
              Tab
              (
                child: Align
                (
                  alignment: Alignment.center,
                  child: Text("Deutsch", style: TextStyle(fontFamily: "Roboto", color: Colors.black)),
                ),
              ),

              Tab
              (
                child: Align
                (
                  alignment: Alignment.center,
                  child: Text("English", style: TextStyle(fontFamily: "Roboto", color: Colors.black)),
                ),
              ),
            ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: ChangeNotifierProvider.value
      (
        value: _settings,
        builder: (context, child) 
        {
          return Center
          (
            child: Consumer<SettingsProvider>
            (
              child: tabChanger(),
              builder: (context, value, child) 
              {
                return Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: 
                  [
                    Text(_settings.english ? "Language" : "Sprache", style: TextStyle(fontFamily: "Roboto", fontSize: 28, fontWeight: FontWeight.bold),),

                    Padding
                    (
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(_settings.english ? chooseLanguageEn : chooseLanguageDt, textAlign: TextAlign.center, style: TextStyle(fontFamily: "Roboto", fontSize: 15)),
                    ),

                    child,

                    Padding
                    (
                      padding: EdgeInsets.only(top: 25),
                      child: DialogButton
                      (
                        text: _settings.english ? "Continue" : "Weiter",
                        callback: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => PrivacyNotice())),
                      ),
                    )
                  ],
                );  
              },
            )
          );  
        },
      )
    );
  }
}

class PrivacyNotice extends StatelessWidget {

  final SettingsProvider _settings = SettingsProvider();

  void _acceptPrivacyNotice() {
    Hive.box(settingsBox).put("FirstStart", false);
  }

  void _viewPrivacyNotice() async {
    await launch(privacyNoticeUrl);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(_settings.english ? "Privacy Notice" : "Datenschutzerklärung", style: TextStyle(fontFamily: "Roboto", fontSize: 28, fontWeight: FontWeight.bold),),

            Padding
            (
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                _settings.english ? privacyNoticeInfo_en : privacyNoticeInfo_dt,
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontFamily: "Roboto", fontSize: 15,
                )
              ),
            ),

            Padding
            (
              padding: EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  DialogButton(
                    text: _settings.english ? "Privacy Notice" : "Datenschutzerklärung",
                    callback: () {
                      _viewPrivacyNotice();
                    },
                  ),

                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),

                  DialogButton(
                    text: _settings.english ? "Continue" : "Weiter", 
                    callback: () {
                      _acceptPrivacyNotice();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Screens()));
                    }
                  )
                ],
              )
            )
          ],
        )
      ),
    );
  }

}

class DialogButton extends StatelessWidget {

  final void Function() callback;
  final String text;

  DialogButton({this.text, this.callback}){}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 140,
      child: ElevatedButton(
        child: Text(text, style: TextStyle(fontFamily: "Roboto", fontSize: 16)),
        onPressed: () => callback()
      ),
    );
  }

}

class Screens extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return ScreensState();
  }
}

class ScreensState extends State<Screens> with SingleTickerProviderStateMixin
{
  int _currentScreen;
  List<Widget> _bodies;

  SettingsProvider _settings;
  TabController textTabs;

  @override
  void initState() {
    super.initState();

    _currentScreen = 1;
    _settings = SettingsProvider();

    textTabs = TabController(length: 3, vsync: this);

    _bodies = 
    [
      FilterScreen(),
      MainScreen(textTabs),
      SettingsScreen()
    ];

  }

  void _onItemTapped(int index)
  {
    setState(() {
      _currentScreen = index;
    });
  }

  BottomNavigationBar _bottomNavigationBar()
  {
    return BottomNavigationBar
    (
      currentIndex: _currentScreen,
      onTap: _onItemTapped,
      selectedItemColor: Color(0xFFCB9B51),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: 
      [
        BottomNavigationBarItem(icon: Icon(Icons.filter_list_rounded), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
      ],
    );
  }

  void aboutDialog(BuildContext context)
  {
    showAboutDialog
    (
      context: context,
      applicationName: "Stolpersteine Erlangen",
      applicationLegalese: _settings.english ? impressumEnglish : impressumGerman
    );
  }

  Widget _appBar(int index)
  {
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

    switch(index)
    {
      case 0:
        return AppBar
        (
          title: Text("Filter", style: TextStyle(fontFamily: "Roboto")),
          centerTitle: true,
          flexibleSpace: appBarGradient,
        );
      break;

      case 2: 
        return AppBar
        (
          centerTitle: true,
          flexibleSpace: appBarGradient,
          title: Consumer<SettingsProvider>(builder: (context, value, child) => Text(value.english ? "Settings" : "Einstellungen", style: TextStyle(fontFamily: "Roboto"))),
        );
      break;
      
      case 1:
        return AppBar
        (
          title: Text("Stolpersteine Erlangen", style: TextStyle(fontFamily: "Roboto")),
          centerTitle: true,
          flexibleSpace: appBarGradient,
          actions: [IconButton(icon: Icon(Icons.search), onPressed: () => showSearch(context: context, delegate: SearchProvider()),),],
          bottom: TabBar
          (
            controller: textTabs,
            indicatorColor: Colors.white,
            tabs: 
            [
              Tab(text: _settings.english ? "History" : "Historie"),
              Tab(text: "Stolpersteine"),
              Tab(text: _settings.english ? "Bookmarks" : "Markiert"),
            ],
          ),
        );
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value
    (
      value: _settings,
      builder: (context, child) 
      {
        return Scaffold
        (
          appBar: _appBar(_currentScreen),
          bottomNavigationBar: _bottomNavigationBar(),
          body: _bodies[_currentScreen],
        );  
      },
    );
  }

}

