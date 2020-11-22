import 'package:StolpersteineErlangen/Data/Colors.dart';
import 'package:StolpersteineErlangen/Data/HIveBoxes.dart';
import 'package:StolpersteineErlangen/Providers/Providers.dart';
import 'package:StolpersteineErlangen/Screens/FilterScreen.dart';
import 'package:StolpersteineErlangen/Screens/MainScreen.dart';
import 'package:StolpersteineErlangen/Screens/SettingsScreen.dart';
import 'package:flutter/material.dart';
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
  await Hive.openBox(favoriteStolperBox);
  await Hive.openBox(favoriteHistoryBox);
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
      color: BACKGROUND_COLOR,
      home: Screens(),   
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

  Widget _bottomNavigationbarTitel(String en, String dt)
  {
    return Consumer<SettingsProvider>
    (
      builder: (context, value, child) 
      {
        return Text(value.english ? en : dt);  
      },
    );
  }

  BottomNavigationBar _bottomNavigationBar()
  {
    return BottomNavigationBar
    (
      currentIndex: _currentScreen,
      onTap: _onItemTapped,
      selectedItemColor: BOTTOMNAVBAR_ICON_COLOR,
      items: 
      [
        BottomNavigationBarItem(icon: Icon(Icons.filter_list_rounded), title: Text("Filter")),
        BottomNavigationBarItem(icon: Icon(Icons.home),title: _bottomNavigationbarTitel("Home", "Haupt")),
        BottomNavigationBarItem(icon: Icon(Icons.settings),title: _bottomNavigationbarTitel("Settings", "Einstellungen")),
      ],
    );
  }

  Widget appBar(int index)
  {
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
          appBar: appBar(_currentScreen),
          bottomNavigationBar: _bottomNavigationBar(),
          body: _bodies[_currentScreen],
        );  
      },
    );
  }

}

