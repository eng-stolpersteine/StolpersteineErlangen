
import 'package:StolpersteineErlangen/Data/SettingsData/Impress.dart';
import 'package:StolpersteineErlangen/Providers/Providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SettingsScreenState();
  }
}

class SettingsScreenState extends State<SettingsScreen> with SingleTickerProviderStateMixin
{
  SettingsProvider _settings;
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _settings = SettingsProvider();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.index = _settings.english ? 1 : 0;
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
            labelStyle: GoogleFonts.roboto(color: Colors.black, fontWeight: FontWeight.bold),
            unselectedLabelStyle: GoogleFonts.roboto(color: Colors.black),
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
                  child: Text("Deutsch", style: GoogleFonts.roboto(color: Colors.black)),
                ),
              ),

              Tab
              (
                child: Align
                (
                  alignment: Alignment.center,
                  child: Text("English", style: GoogleFonts.roboto(color: Colors.black)),
                ),
              ),
            ],
        ),
      ),
    );
  }

  Widget div()
  {
    return Padding
    (
      padding: EdgeInsets.symmetric(horizontal: 15),
      child:Divider(thickness: 2,)
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Align
    (
      alignment: Alignment.center,
      child: Padding
      (
        padding: EdgeInsets.only(top: 20),
        child: ListView
        (
            children: 
            [
              Padding
              (
                padding: EdgeInsets.only(left: 15),
                child: Align
                (
                  alignment: Alignment.centerLeft,
                  child: Consumer<SettingsProvider>
                  (
                    builder: (context, value, child) => Text(value.english ? "Language" : "Sprache", style: GoogleFonts.roboto(fontSize: 18)),
                  ),
                ),
              ),
              div(),
              tabChanger(),
              Padding
              (
                padding: EdgeInsets.only(top: 30, left: 15),
                child: Align
                (
                  alignment: Alignment.centerLeft,
                  child: Consumer<SettingsProvider>
                  (
                    builder: (context, value, child) => Text(value.english ? "Impress" : "Impressum", style: GoogleFonts.roboto(fontSize: 18)),
                  ),
                ),
              ),
              div(),
              Padding
              (
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Consumer<SettingsProvider>
                (
                  builder: (context, value, child) => Text(value.english ? impressumEnglish : impressumGerman, style: GoogleFonts.roboto(fontSize: 15),),
                )
              ),
            ],
        ),
      ),
    );
  }
}