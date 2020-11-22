import 'package:StolpersteineErlangen/Providers/Providers.dart';
import 'package:flutter/material.dart';


class AllgemeinerTextScreen extends StatelessWidget
{
  int index;
  BookMarksProvider _bookmarks = BookMarksProvider();

  AllgemeinerTextScreen(this.index);

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
                  onPressed: () => _bookmarks.add(index, "History"),
              ),

              RaisedButton
              (
                child: Text("Remove"),
                onPressed: () => _bookmarks.remove(index, "History")
              )
          ],
        )
      )
    );
  }
}
