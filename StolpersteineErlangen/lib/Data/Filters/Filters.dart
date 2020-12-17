import 'package:StolpersteineErlangen/Data/Filters/FilterEnum.dart';
import 'package:StolpersteineErlangen/Models/FilterModel.dart';

List<FilterModel> deportationFilters = 
[
  FilterModel(nameDt: "Auschwitz", nameEn: "Auschwitz", id: Filter.Auschwitz),
  FilterModel(nameDt: "Dachau", nameEn: "Dachau", id: Filter.Dachau),
  FilterModel(nameDt: "Erlangen", nameEn: "Erlangen", id: Filter.Erlangen),
  FilterModel(nameDt: "Theresienstadt", nameEn: "Theresienstadt", id: Filter.Theresienstadt),
  FilterModel(nameDt: "Anderes", nameEn: "Other", id: Filter.Other),
];

List<FilterModel> locationFilters = 
[
  FilterModel(nameDt: "Bayreuther Strasse", nameEn: "Bayreuther Strasse", id: Filter.Bayreuther_Strasse),
  FilterModel(nameDt: "Calvinstrasse", nameEn: "Calvinstrasse", id: Filter.Calvinstrasse),
  FilterModel(nameDt: "Einhornstrasse", nameEn: "Einhornstrasse", id: Filter.Einhornstrasse),
  FilterModel(nameDt: "Goethestrasse", nameEn: "Goethestrasse", id: Filter.Goethestrasse),
  FilterModel(nameDt: "Hauptstrasse", nameEn: "Hauptstrasse", id: Filter.Hauptstrasse),
  FilterModel(nameDt: "Innere Brucker Strasse", nameEn: "Innere Brucker Strasse", id: Filter.Innere_Brucker_Strasse),
  FilterModel(nameDt: "Österreicher Strasse", nameEn: "Österreicher Strasse", id: Filter.Oesterreicher_Strasse),
  FilterModel(nameDt: "Theaterplatz", nameEn: "Theaterplatz", id: Filter.Theaterplatz),
];

List<FilterModel> familyFilters = 
[
  FilterModel(nameDt: "Bauer", nameEn: "Bauer", id: Filter.Bauer),
  FilterModel(nameDt: "Benesi", nameEn: "Benesi", id: Filter.Benesi),
  FilterModel(nameDt: "Cohn", nameEn: "Cohn", id: Filter.Cohn),
  FilterModel(nameDt: "Dreifuss", nameEn: "Dreifuss", id: Filter.Dreifuss),
  FilterModel(nameDt: "Fleischhauer", nameEn: "Fleischhauer", id: Filter.Fleischhauer),
  FilterModel(nameDt: "Heyer", nameEn: "Heyer", id: Filter.Heyer),
  FilterModel(nameDt: "Katz", nameEn: "Katz", id: Filter.Katz),
  FilterModel(nameDt: "Rotenstein", nameEn: "Rotenstein", id: Filter.Rotenstein),
  FilterModel(nameDt: "Uhlfelder", nameEn: "Uhlfelder", id: Filter.Uhlfelder),
  FilterModel(nameDt: "Vissing", nameEn: "Vissing", id: Filter.Vissing),
  FilterModel(nameDt: "Wassermann", nameEn: "Wassermann", id: Filter.Wassermann),
  FilterModel(nameDt: "Weglein", nameEn: "Weglein", id: Filter.Weglein),
  FilterModel(nameDt: "Weinstock", nameEn: "Weinstock", id: Filter.Weinstock),
  FilterModel(nameDt: "Wild", nameEn: "Wild", id: Filter.Wild),
];