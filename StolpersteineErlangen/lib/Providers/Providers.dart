import 'package:StolpersteineErlangen/Data/HIveBoxes.dart';
import 'package:StolpersteineErlangen/Data/StolpersteinData/Names.dart';
import 'package:StolpersteineErlangen/Screens/MainScreen.dart';
import 'package:StolpersteineErlangen/Screens/Stolperstein/StolpersteinScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

class SettingsProvider extends ChangeNotifier
{
    static final SettingsProvider _instance = SettingsProvider._internal();

    factory SettingsProvider() => _instance;

    static Box _settings;

    static bool _english;

    SettingsProvider._internal()
    {
      _settings = Hive.box(settingsBox);
      _english = _settings.get("english", defaultValue: true);
    }

    bool get english => _english;

    void setLanguageGerman()
    {
      _english = false;
      _settings.put("english", _english);
      notifyListeners();
    }

    void setLanguageEnglish()
    {
      _english = true;
      _settings.put("english", _english);
      notifyListeners();
    }
}

class SearchProvider extends SearchDelegate<String>
{

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions

    final Iterable<String> suggestions =  query.isEmpty ? names : names.where((p) => p.startsWith(query));

    return _WordSuggestionList
    (
        query: this.query,
        suggestions: suggestions.toList(),
        onSelected: (String suggestion) 
        {
          this.query = suggestion;
          Navigator.push
          (
            context,
            MaterialPageRoute
            (
                builder: (context) => StolpersteinScreen(names.indexOf(this.query))
            )
          );
        }
    );
  }
}

class _WordSuggestionList extends StatelessWidget {
  _WordSuggestionList({this.suggestions, this.query, this.onSelected});

  final List<String> suggestions;
  final String query;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int index) {
        final String suggestion = suggestions[index];
        return ListTile(
          onTap: () {
            onSelected(suggestion);
          },
          leading: Icon(Icons.person),
          title: RichText(
            text: TextSpan(
                text: suggestion.substring(0, query.length),
                style: GoogleFonts.roboto(
                    color: Colors.black, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: suggestions[index].substring(query.length),
                    style: GoogleFonts.roboto(color: Colors.grey),
                  )
                ]),
          ),
        );
      },
    );
  }
}

class FilterProvider extends ChangeNotifier
{
  static final FilterProvider _instance = FilterProvider._internal();

  factory FilterProvider() => _instance;

  static Box _filter_box;
  static List<bool> filterValues;

  FilterProvider._internal()
  {
    _filter_box = Hive.box(filterBox);
    filterValues = _filter_box.get("filters", defaultValue: [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]);
  }

  void updateFilter(int id)
  {
    filterValues[id] = !filterValues[id];
    _filter_box.put("filters", filterValues);
    notifyListeners();
  }
}

class BookMarksProvider extends ChangeNotifier
{
  static final BookMarksProvider _instance = BookMarksProvider._internal();

  factory BookMarksProvider() => _instance;

  static Box _favStolpersteine;
  static Box _favHistorie;

  static List<bool> favSteine;
  static List<bool> favHistory;

  static const  String historyType = "History";

  static const String stolpersteinType = "Stolper";

  BookMarksProvider._internal()
  {
    _favStolpersteine = Hive.box(favoriteStolperBox);
    _favHistorie = Hive.box(favoriteHistoryBox);
    initItems();
  }

  void initItems()
  {
      favSteine = _favStolpersteine.get("favSteine", defaultValue: [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]);
      favHistory = _favHistorie.get("favHistory", defaultValue: [false,false,false,false]);
  }

  void add(int index, String type)
  {
      switch(type)
      {
          case stolpersteinType:
            favSteine[index] = true;
            _favStolpersteine.put("favSteine", favSteine);
            break;

          case historyType:
            favHistory[index] = true;
            _favHistorie.put("favHistory", favHistory);
            break;
      }

      notifyListeners();
  }

  void remove(int index, String type)
  {
      switch(type)
      {
          case stolpersteinType:
            favSteine[index] = false;
            _favStolpersteine.put("favSteine", favSteine);
            break;

          case historyType:
            favHistory[index] = false;
            _favHistorie.put("favHistory", favHistory);
            break;
      }

      notifyListeners();
  }
}

