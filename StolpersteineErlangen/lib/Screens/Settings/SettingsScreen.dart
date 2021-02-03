import 'package:StolpersteineErlangen/Data/SettingsData/AboutUs.dart';
import 'package:StolpersteineErlangen/Data/SettingsData/Impress.dart';
import 'package:StolpersteineErlangen/Providers/Providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:StolpersteineErlangen/Data/SettingsData/Danke_Text.dart';

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

  Widget div()
  {
    return Padding
    (
      padding: EdgeInsets.symmetric(horizontal: 15),
      child:Divider(thickness: 2,)
    );
  }

  Widget MiscContainer(String titleDt, String titleEn, Icon leading, String contentDt, String contentEn, TextAlign txtAl,)
  {
    return Padding
    (
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Card
      (
        elevation: 6,
        child: Center
        (
          child: Consumer<SettingsProvider>
          (
            builder: (context, prov, child) => ExpansionTile
            (
              title: Text
              (
                prov.english ? titleEn : titleDt, 
                style: TextStyle(fontFamily: "Roboto", color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
              ),
              leading: leading,
              childrenPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              children: 
              [
                Text
                (
                  prov.english ? contentEn : contentDt,
                  style: TextStyle(fontFamily: "Roboto", color: Colors.black, fontSize: 15,),
                  textAlign: txtAl,
                ),
              ],
            ),
          ),
        ),
      ),
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
                    builder: (context, value, child) => Text(value.english ? "Language" : "Sprache", style: TextStyle(fontFamily: "Roboto", fontSize: 18))
                  ),
                ),
              ),
              div(),
              tabChanger(),

              Padding(padding: EdgeInsets.only(top: 30), child: div()),
              
              MiscContainer("Über Uns", "About Us", Icon(Icons.info, size: 30, color: Colors.blue,), aboutUs_dt, aboutUs_en, null,),
              MiscContainer("Meilensteine", "Achievements", Icon(Icons.star, size: 30, color: Colors.yellow[600]), "", "", TextAlign.left,),
              MiscContainer("Danke!", "Thanks!", Icon(Icons.favorite, size: 30, color: Colors.red), danke_dt, danke_en, TextAlign.left,),
              
              div(),
              
              MiscContainer("Impressum", "Impress",null, impressumGerman, impressumEnglish,null,),
              
              Padding
              (
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Card
                (
                    elevation: 6,
                    child: Center
                    (
                      child: ListTile
                      (
                        title: Consumer<SettingsProvider>
                        (
                          builder: (context, prov, ch) => Text
                          (
                            prov.english ? "Licenses" : "Lizenzen",
                            style: TextStyle(fontFamily: "Roboto", fontSize: 22, fontWeight: FontWeight.bold)
                          ),
                        ),
                        onTap: () => showLicensePage(context: context, applicationName: "Stolpersteine Erlangen")
                      ),
                    ),
                ),
              ),
            ],
        ),
      ),
    );
  }
}