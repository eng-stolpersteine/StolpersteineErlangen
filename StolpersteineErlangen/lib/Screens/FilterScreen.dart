
import 'package:StolpersteineErlangen/Data/FilterData.dart';
import 'package:StolpersteineErlangen/Providers/Providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilterScreen extends StatelessWidget
{
  FilterProvider _filter = FilterProvider();

  Widget tile(String title)
  {
    return Selector<FilterProvider, bool>
    (
      selector: (context, filter) => FilterProvider.getFilterValue(title),
      child: Text(title, style: GoogleFonts.roboto()),
      builder: (context, value, child) 
      {
        return CheckboxListTile
        (
            value: value,
            title: child,
            onChanged: (value) => _filter.updateFilter(title),
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

        for(String filter in deportation_filters)
          children.add(tile(filter));
        
        children.add(div());

        for(String filter in location_filters)
          children.add(tile(filter));
        
        children.add(div());

        for(String filter in family_filters)
          children.add(tile(filter));

        return ListView(children: children);
      },
    );
  }
}