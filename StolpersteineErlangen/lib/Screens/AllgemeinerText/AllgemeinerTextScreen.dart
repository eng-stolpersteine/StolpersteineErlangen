import 'package:StolpersteineErlangen/Data/HistoryData/Names.dart';
import 'package:StolpersteineErlangen/Providers/Providers.dart';
import 'package:flutter/material.dart';


class AllgemeinerTextScreen extends StatelessWidget
{
  int index;
  BookMarksProvider _bookmarks = BookMarksProvider();
  
  String titel;

  AllgemeinerTextScreen(this.index)
  {
    titel = historie_names[index];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold
    (
      body: Center
      (
        child: Row
        (
          children: 
          [
              RaisedButton
              (
                  child: Text("Add"),
                  onPressed: () => _bookmarks.add(titel),
              ),

              RaisedButton
              (
                child: Text("Remove"),
                onPressed: () => _bookmarks.remove(titel)
              )
          ],
        )
      )
    );
  }
}
