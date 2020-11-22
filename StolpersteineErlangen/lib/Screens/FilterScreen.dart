
import 'package:StolpersteineErlangen/Providers/Providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilterScreen extends StatelessWidget
{
  SettingsProvider _settings = SettingsProvider();
  FilterProvider _filter = FilterProvider();

  Widget tile(String title, int id)
  {
    return Selector<FilterProvider, bool>
    (
      selector: (context, filter) => FilterProvider.filterValues[id],
      child: Text(title, style: GoogleFonts.roboto()),
      builder: (context, value, child) 
      {
        return CheckboxListTile
        (
            value: value,
            title: child,
            onChanged: (value) => _filter.updateFilter(id),
        );  
      },
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
    return ChangeNotifierProvider.value
    (
      value: _filter,
      builder: (context, child) 
      {
        return ListView
        (
          children: 
          [
            tile("Auschwitz", 0),
            tile("Dachau", 1),
            tile("Erlangen", 2),
            tile("Theresienstadt", 3),
            tile(_settings.english ? "Other" : "Anderes", 4),

            div(),
            tile("Bayreuther Straße", 5),
            tile("Calvinstraße", 6),
            tile("Einhornstraße", 7),
            tile("Goethestraße", 8),
            tile("Hauptstraße", 9),
            tile("Innere Brucker Straße", 10),
            tile("Österreicher Straße", 11),
            tile("Theaterplatz", 12),

            div(),
            tile("Bauer", 13),
            tile("Benesi", 14),
            tile("Cohn", 15),
            tile("Dreifuss", 16),
            tile("Fleischhauer", 17),
            tile("Heyer", 18),
            tile("Katz", 19),
            tile("Rotenstein", 20),
            tile("Uhlfelder", 21),
            tile("Vissing", 22),
            tile("Wassermann", 23),
            tile("Weglein", 24),
            tile("Weinstock", 25),
            tile("Wild", 26),
          ],
        );
      },
    );
  }
}