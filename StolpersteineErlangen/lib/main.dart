import 'package:StolpersteineErlangen/Data/HiveBoxes.dart';
import 'package:StolpersteineErlangen/Providers/Providers.dart';
import 'package:StolpersteineErlangen/Screens/FilterScreen.dart';
import 'package:StolpersteineErlangen/Screens/MainScreen.dart';
import 'package:StolpersteineErlangen/Screens/SettingsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      color: Colors.grey[300],
      home: Screens()   
    );
  }
}

class Screens extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
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
    // TODO: implement initState
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
        BottomNavigationBarItem(icon: Icon(Icons.filter_list_rounded), title: Text("")),
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
        BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("")),
      ],
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
          title: Text("Filter", style: GoogleFonts.roboto()),
          centerTitle: true,
          flexibleSpace: appBarGradient,
        );
      break;

      case 2: 
        return AppBar
        (
          centerTitle: true,
          flexibleSpace: appBarGradient,
          title: Consumer<SettingsProvider>
          (
            builder: (context, value, child) 
            {
              return Text(value.english ? "Settings" : "Einstellungen", style: GoogleFonts.roboto());
            },
          ),
        );
      break;
      
      case 1:
        return AppBar
        (
          title: Text("Stolpersteine Erlangen", style: GoogleFonts.roboto(),),
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
    // TODO: implement build
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

