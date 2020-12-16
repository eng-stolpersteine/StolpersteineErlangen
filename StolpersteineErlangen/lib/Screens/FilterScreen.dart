import 'package:StolpersteineErlangen/Providers/Providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:StolpersteineErlangen/Models/FilterModel.dart';
import 'package:StolpersteineErlangen/Data/Filters.dart';

class FilterScreen extends StatelessWidget
{
  FilterProvider _filter = FilterProvider();
  SettingsProvider _settings = SettingsProvider();

  Widget tile(FilterModel model)
  {
    return Selector<FilterProvider, bool>
    (
      selector: (context, filter) => FilterProvider.getFilterValue(model.nameDt),
      child: Text(_settings.english ? model.nameEn : model.nameDt, style: GoogleFonts.roboto()),
      builder: (context, value, child) 
      {
        return CheckboxListTile
        (
            value: value,
            title: child,
            onChanged: (value) => _filter.updateFilter(model.nameDt)
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
        List<Widget> children = List<Widget>();

        for(FilterModel filter in deportationFilters)
          children.add(tile(filter));
        
        children.add(div());

        for(FilterModel filter in locationFilters)
          children.add(tile(filter));
        
        children.add(div());

        for(FilterModel filter in familyFilters)
          children.add(tile(filter));

        return ListView(children: children);
      },
    );
  }
}