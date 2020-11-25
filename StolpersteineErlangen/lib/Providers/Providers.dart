import 'package:StolpersteineErlangen/Data/HIveBoxes.dart';
import 'package:StolpersteineErlangen/Data/HistoryData/Names.dart';
import 'package:StolpersteineErlangen/Data/StolpersteinData/Names.dart';
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

    final Iterable<String> suggestions =  query.isEmpty ? stolperstein_names : stolperstein_names.where((p) => p.startsWith(query));

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
                builder: (context) => StolpersteinScreen(stolperstein_names.indexOf(this.query))
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

  static const  String historyType = "History";
  static const String stolpersteinType = "Stolper";

  static Map<String,bool> favorites;
  static Box _favoritesBox;

  BookMarksProvider._internal()
  {
    _favoritesBox = Hive.box(favoritesBox);
    initItems();
  }

  void initItems()
  {
      favorites = Map<String,bool>();

      for(String name in stolperstein_names)
        favorites[name] = _favoritesBox.get(name, defaultValue: false);

      for(String name in historie_names)
        favorites[name] = _favoritesBox.get(name, defaultValue: false);
  }

  static bool isFavorite(String name) => favorites[name]; 

  void add(String name)
  {
      favorites[name] = true;
      _favoritesBox.put(name, true);
      notifyListeners();
  }

  void remove(String name)
  {
      favorites[name] = false;
      _favoritesBox.put(name, false);
      notifyListeners();
  }
}

