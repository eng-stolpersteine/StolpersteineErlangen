import 'package:StolpersteineErlangen/Data/Filters/Filters.dart';
import 'package:StolpersteineErlangen/Data/History.dart';
import 'package:StolpersteineErlangen/Data/HiveBoxes.dart';
import 'package:StolpersteineErlangen/Data/Stolpersteine.dart';
import 'package:StolpersteineErlangen/Models/HistoryModel.dart';
import 'package:StolpersteineErlangen/Models/StolpersteinModel.dart';
import 'package:StolpersteineErlangen/Screens/Stolperstein/StolpersteinScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:StolpersteineErlangen/Models/FilterModel.dart';

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
        icon: Icon(Icons.arrow_back),
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

    List<String> names = new List<String>();
    for(StolpersteinModel model in stolpersteinModels)
      names.add(model.name);

    final Iterable<String> suggestions =  query.isEmpty ? names : names.where((p) => p.toLowerCase().contains(query.toLowerCase()));

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
                builder: (context) => StolpersteinScreen(stolpersteinModels[names.indexOf(this.query)])
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
          title: Text(suggestion, style: TextStyle(fontFamily: "Roboto", color: Colors.grey),)
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
  static Map<String, bool> filterValues;

  FilterProvider._internal()
  {
    _filter_box = Hive.box(filterBox);
    filterValues = Map<String,bool>();

    for(FilterModel filter in deportationFilters)
      filterValues[filter.id.toString()] = _filter_box.get(filter.id.toString(), defaultValue: false);

    for(FilterModel filter in locationFilters)
      filterValues[filter.id.toString()] = _filter_box.get(filter.id.toString(), defaultValue: false);

    for(FilterModel filter in familyFilters)
      filterValues[filter.id.toString()] = _filter_box.get(filter.id.toString(), defaultValue: false);
  }

  static bool getFilterValue(String name) => filterValues[name];

  void updateFilter(String name)
  {
    filterValues[name] = !filterValues[name];
    _filter_box.put(name, filterValues[name]);
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

      for(StolpersteinModel model in stolpersteinModels)
        favorites[model.name] = _favoritesBox.get(model.name, defaultValue: false);

      for(HistoryModel model in historyModels)
        favorites[model.name] = _favoritesBox.get(model.name, defaultValue: false);
  }

  static bool isFavorite(String name) => favorites[name] ?? false; 

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

