import 'package:StolpersteineErlangen/Data/Filters/FilterEnum.dart';
import 'package:StolpersteineErlangen/Data/Texts/LongText/StolpersteinLongText.dart';
import 'package:StolpersteineErlangen/Data/Texts/ShortText/StolpersteinShortText.dart';
import 'package:StolpersteineErlangen/Data/Texts/Sources/StolpersteinSources.dart';
import 'package:StolpersteineErlangen/Models/PictureModel.dart';
import 'package:StolpersteineErlangen/Models/StolpersteinModel.dart';
 

List<StolpersteinModel> stolpersteinModels = 
[
  StolpersteinModel
  (
    name: "Amalie Bauer",
    location: "http://www.google.com/maps/search/?api=1&query=Theaterplatz+4%2CErlangen%2CGermany",
    shortTextDt: sh_Bauer_Amalia_dt,
    shortTextEn: sh_Bauer_Amalia_en, 
    textDt: txt_Bauer_Amalia_dt, 
    textEn: txt_Bauer_Amalia_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Familie_Bauer.mp3", 
    audioUrlEn: "Audio/Stolperstein/En/Familie_Bauer.mp3", 
    sources: src_Bauer_Amalia, 
    galleryImages: 
    [
      PictureModel(infoDt:"Theaterplatz 4", infoEn: "Theaterplatz 4", source: "Stadtarchiv Erlangen, VIII.4.K.181/19, Josef Keller", path: "./assets/Images/Stolperstein/Bauer/Bauer_Amalia/1Bauer_A_S_Theaterplatz_4.jpg"),
      PictureModel(infoDt:"Theaterplatz 4", infoEn: "Theaterplatz 4", source: "Stadtarchiv Erlangen, VI.MM.b.4918, Axel Dorsch", path: "./assets/Images/Stolperstein/Bauer/Bauer_Amalia/2Bauer_A_S_Theaterplatz_4.jpg"),
      PictureModel(infoDt:"Theaterplatz 4", infoEn: "Theaterplatz 4", source: "Stadtarchiv Erlangen, VI.MM.b.1717, Axel Dorsch", path: "./assets/Images/Stolperstein/Bauer/Bauer_Amalia/3Bauer_A_S_Theaterplatz_4.jpg"),
      PictureModel(infoDt:"Theaterplatz 4", infoEn: "Theaterplatz 4", source: "Stadtarchiv Erlangen, VI.MM.b.1717, Axel Dorsch", path: "./assets/Images/Stolperstein/Bauer/Bauer_Amalia/4Bauer_A_S_Theaterplatz_4.jpg"),
      PictureModel(infoDt:"Amalie Bauer - Stolperstein", infoEn: "Amalie Bauer - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Bauer/Bauer_Amalia/Bauer_Amalia.jpg"),
    ], 
    profilePics: ["./assets/Images/Stolperstein/Bauer/Bauer_Amalia/Bauer_Amalia.jpg"], 
    filters: [Filter.Kowno, Filter.Theaterplatz, Filter.Bauer]
  ),

  StolpersteinModel
  (
    name: "Ernestine Bauer",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+4%2CErlangen%2CGermany",
    shortTextDt: sh_Bauer_Ernestine_dt,
    shortTextEn: sh_Bauer_Ernestine_en, 
    textDt: txt_Bauer_Ernestine_dt, 
    textEn: txt_Bauer_Ernestine_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Familie_Bauer.mp3",
    audioUrlEn: "Audio/Stolperstein/En/Familie_Bauer.mp3", 
    sources: src_Bauer_Ernestine, 
    galleryImages: 
    [
      PictureModel(infoDt:"Hauptstrasse 4", infoEn: "Hauptstrasse 4", source: "Stadtarchiv Erlangen, VI.Z.b.5478, Unbekannt", path: "./assets/Images/Stolperstein/Bauer/Bauer_Ernestine/1Bauer_J_E_Hauptstrasse_4.jpg"),
      PictureModel(infoDt:"Hauptstrasse 4", infoEn: "Hauptstrasse 4", source: "Stadtarchiv Erlangen, VI.A.b.424, Rudi Stümpel", path: "./assets/Images/Stolperstein/Bauer/Bauer_Ernestine/2Bauer_J_E_Hauptstrasse_4.jpg"),
      PictureModel(infoDt:"Haupstrasse 4", infoEn: "Hauptstrasse 4", source: "Stadtarchiv Erlangen, VI.A.b.705, Siegfried Leiter", path: "./assets/Images/Stolperstein/Bauer/Bauer_Ernestine/3Bauer_J_E_Hauptstrasse_4.jpg"),
      PictureModel(infoDt:"Hauptstrasse 4", infoEn: "Hauptstrasse 4", source: "Stadtarchiv Erlangen, VI.M.b.1020, Ernst Deuerlein", path: "./assets/Images/Stolperstein/Bauer/Bauer_Ernestine/4Bauer_J_E_Hauptstrasse_4.jpg"),
      PictureModel(infoDt:"Ernestine Bauer - Stolperstein", infoEn: "Ernestine Bauer - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Bauer/Bauer_Ernestine/Bauer_Ernestine.jpg"),
    ], 
    profilePics: ["./assets/Images/Stolperstein/Bauer/Bauer_Ernestine/Bauer_Ernestine.jpg"], 
    filters: [Filter.Kowno, Filter.Hauptstrasse, Filter.Bauer]
  ),

  StolpersteinModel
  (
    name: "Josef Bauer",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+4%2CErlangen%2CGermany",
    shortTextDt: sh_Bauer_Josef_dt,
    shortTextEn: sh_Bauer_Josef_en, 
    textDt: txt_Bauer_Josef_dt, 
    textEn: txt_Bauer_Josef_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Familie_Bauer.mp3", 
    audioUrlEn: "Audio/Stolperstein/En/Familie_Bauer.mp3", 
    sources: src_Bauer_Josef, 
    galleryImages: 
    [
      PictureModel(infoDt:"Hauptstrasse 4", infoEn: "Hauptstrasse 4", source: "Stadtarchiv Erlangen, VI.Z.b.5478, Unbekannt", path: "./assets/Images/Stolperstein/Bauer/Bauer_Josef/1Bauer_J_E_Hauptstrasse_4.jpg"),
      PictureModel(infoDt:"Hauptstrasse 4", infoEn: "Hauptstrasse 4", source: "Stadtarchiv Erlangen, VI.A.b.424, Rudi Stümpel", path: "./assets/Images/Stolperstein/Bauer/Bauer_Josef/2Bauer_J_E_Hauptstrasse_4.jpg"),
      PictureModel(infoDt:"Hauptstrasse 4", infoEn: "Hauptstrasse 4", source: "Stadtarchiv Erlangen, VI.A.b.705, Siegfried Leiter", path: "./assets/Images/Stolperstein/Bauer/Bauer_Josef/3Bauer_J_E_Hauptstrasse_4.jpg"),
      PictureModel(infoDt:"Hauptstrasse 4", infoEn: "Hauptstrasse 4", source: "Stadtarchiv Erlangen, VI.M.b.1020, Ernst Deuerlein", path: "./assets/Images/Stolperstein/Bauer/Bauer_Josef/4Bauer_J_E_Hauptstrasse_4.jpg"),
      PictureModel(infoDt:"Josef Bauer - Stolperstein", infoEn: "Josef Bauer - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Bauer/Bauer_Josef/Bauer_Josef.jpg"),
    ], 
    profilePics: ["./assets/Images/Stolperstein/Bauer/Bauer_Josef/Bauer_Josef.jpg"], 
    filters: [Filter.Kowno, Filter.Hauptstrasse, Filter.Bauer]
  ),

  StolpersteinModel
  (
    name: "Simon Bauer",
    location: "http://www.google.com/maps/search/?api=1&query=Theaterplatz+4%2CErlangen%2CGermany",
    shortTextDt: sh_Bauer_Simon_dt,
    shortTextEn: sh_Bauer_Simon_en, 
    textDt: txt_Bauer_Simon_dt, 
    textEn: txt_Bauer_Simon_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Familie_Bauer.mp3",  
    audioUrlEn: "Audio/Stolperstein/En/Familie_Bauer.mp3", 
    sources: src_Bauer_Simon, 
    galleryImages: 
    [
      PictureModel(infoDt:"Theaterplatz 4", infoEn: "Theaterplatz 4", source: "Stadtarchiv Erlangen, VIII.4.K.181/19, Josef Keller", path: "./assets/Images/Stolperstein/Bauer/Bauer_Simon/1Bauer_A_S_Theaterplatz_4.jpg"),
      PictureModel(infoDt:"Theaterplatz 4", infoEn: "Theaterplatz 4", source: "Stadtarchiv Erlangen, VI.MM.b.4918, Axel Dorsch", path: "./assets/Images/Stolperstein/Bauer/Bauer_Simon/2Bauer_A_S_Theaterplatz_4.jpg"),
      PictureModel(infoDt:"Theaterplatz 4", infoEn: "Theaterplatz 4", source: "Stadtarchiv Erlangen, VI.MM.b.1717, Axel Dorsch", path: "./assets/Images/Stolperstein/Bauer/Bauer_Simon/3Bauer_A_S_Theaterplatz_4.jpg"),
      PictureModel(infoDt:"Theaterplatz 4", infoEn: "Theaterplatz 4", source: "Stadtarchiv Erlangen, VI.MM.b.1717, Axel Dorsch", path: "./assets/Images/Stolperstein/Bauer/Bauer_Simon/4Bauer_A_S_Theaterplatz_4.jpg"),
      PictureModel(infoDt:"Simon Bauer - Stolperstein", infoEn: "Simon Bauer - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Bauer/Bauer_Simon/Bauer_Simon.jpg"),
    ], 
    profilePics: ["./assets/Images/Stolperstein/Bauer/Bauer_Simon/Bauer_Simon.jpg"], 
    filters:  [Filter.Kowno, Filter.Theaterplatz, Filter.Bauer]
  ),

  StolpersteinModel
  (
    name: "Erich Benesi",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+2%2CErlangen%2CGermany",
    shortTextDt: sh_Benesi_Erich_dt,
    shortTextEn: sh_Benesi_Erich_en, 
    textDt: txt_Benesi_dt, 
    textEn: txt_Benesi_Erich_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Benesi.mp3", 
    audioUrlEn: "", 
    sources: src_Benesi_Erich, 
    galleryImages: 
    [
      PictureModel(infoDt:"Erich Benesi - Stolperstein", infoEn: "Erich Benesi - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Benesi/Benesi_Erich/Benesi_Erich.jpg"),
      PictureModel(infoDt:"Erich Benesi", infoEn: "Erich Benesi", source: "Stadtarchiv Erlangen, Stadtarchiv Erlangen, ohne Signatur, Unbekannt", path: "./assets/Images/Stolperstein/Benesi/Benesi_Erich/Benesi_Erich_PT.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VIII.4.K.83/26, Josef Keller", path: "./assets/Images/Stolperstein/Benesi/1Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.Z.b.5478, Unbekannt", path: "./assets/Images/Stolperstein/Benesi/2Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.101, Unbekannt", path: "./assets/Images/Stolperstein/Benesi/3Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.294, Josef Keller", path: "./assets/Images/Stolperstein/Benesi/4Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.A.b.705, Siegfried Leiter", path: "./assets/Images/Stolperstein/Benesi/5Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.518, Unbekannt", path: "./assets/Images/Stolperstein/Benesi/6Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.1018, Ernst Deuerlein", path: "./assets/Images/Stolperstein/Benesi/7Benesi_Hauptstrasse_2.jpg"),
          
    ], 
    profilePics: ["./assets/Images/Stolperstein/Benesi/Benesi_Erich/Benesi_Erich.jpg", "./assets/Images/Stolperstein/Benesi/Benesi_Erich/Benesi_Erich_PT.jpg"], 
    filters: [Filter.Auschwitz, Filter.Hauptstrasse, Filter.Benesi]
  ),

  StolpersteinModel
  (
    name: "Gottliebe Benesi",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+2%2CErlangen%2CGermany",
    shortTextDt: sh_Benesi_Gottliebe_dt,
    shortTextEn: sh_Benesi_Gottliebe_en, 
    textDt: txt_Benesi_dt, 
    textEn: txt_Benesi_Gottliebe_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Benesi.mp3", 
    audioUrlEn: "", 
    sources: src_Benesi_Gottliebe, 
    galleryImages: 
    [
      PictureModel(infoDt:"Gottliebe Benesi - Stolperstein", infoEn: "Gottliebe Benesi - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Benesi/Benesi_Gottliebe/Benesi_Gottliebe.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VIII.4.K.83/26, Josef Keller", path: "./assets/Images/Stolperstein/Benesi/1Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.Z.b.5478, Unbekannt", path: "./assets/Images/Stolperstein/Benesi/2Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.101, Unbekannt", path: "./assets/Images/Stolperstein/Benesi/3Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.294, Josef Keller", path: "./assets/Images/Stolperstein/Benesi/4Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.A.b.705, Siegfried Leiter", path: "./assets/Images/Stolperstein/Benesi/5Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.518, Unbekannt", path: "./assets/Images/Stolperstein/Benesi/6Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.1018, Ernst Deuerlein", path: "./assets/Images/Stolperstein/Benesi/7Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt: "Gottliebe & Jakob Benesi", infoEn: "Gottliebe & Jakob Benesi", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Benesi/Benesi_Gottliebe_Jakob.jpeg")
    ], 
    profilePics: ["./assets/Images/Stolperstein/Benesi/Benesi_Gottliebe/Benesi_Gottliebe.jpg"], 
    filters: [Filter.Auschwitz, Filter.Hauptstrasse, Filter.Benesi]
  ),

  StolpersteinModel
  (
    name: "Hannelore Benesi",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+2%2CErlangen%2CGermany",
    shortTextDt: sh_Benesi_Hannelore_dt,
    shortTextEn: sh_Benesi_Hannelore_en, 
    textDt: txt_Benesi_dt, 
    textEn: txt_Benesi_Hannelore_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Benesi.mp3", 
    audioUrlEn: "", 
    sources: src_Benesi_Hannelore, 
    galleryImages: 
    [
      PictureModel(infoDt:"Hannelore Benesi", infoEn: "Hannelore Benesi", source: "Stadtarchiv Erlangen, Stadtarchiv Erlangen, ohne Signatur, Jakob Benesi", path: "./assets/Images/Stolperstein/Benesi/Benesi_Hannelore/Benesi_Hannelore _PT.jpg"),
      PictureModel(infoDt:"Hannelore Benesi - Stolperstein", infoEn: "Hannelore Benesi - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Benesi/Benesi_Hannelore/Benesi_Hannelore.jpg"),
    ], 
    profilePics: ["./assets/Images/Stolperstein/Benesi/Benesi_Hannelore/Benesi_Hannelore.jpg","./assets/Images/Stolperstein/Benesi/Benesi_Hannelore/Benesi_Hannelore _PT.jpg",], 
    filters: [Filter.Auschwitz, Filter.Hauptstrasse, Filter.Benesi]
  ),

  StolpersteinModel
  (
    name: "Hildegard Benesi",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+2%2CErlangen%2CGermany",
    shortTextDt: sh_Benesi_Hildegard_dt,
    shortTextEn: sh_Benesi_Hildegard_en, 
    textDt: txt_Benesi_dt, 
    textEn: txt_Benesi_Hildegard_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Benesi.mp3", 
    audioUrlEn: "", 
    sources: src_Benesi_Hildegard, 
    galleryImages: 
    [
      PictureModel(infoDt:"Hildegard Benesi - Stolperstein", infoEn: "Hildegard Benesi - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Benesi/Benesi_Hildegard/Benesi_Hildegard.jpg"),
      PictureModel(infoDt:"Hildegard Benesi", infoEn: "Hildegard Benesi", source: "Stadtarchiv Erlangen, Stadtarchiv Erlangen, ohne Signatur, Jakob Benesi", path: "./assets/Images/Stolperstein/Benesi/Benesi_Hildegard/Hildegard Benesi.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VIII.4.K.83/26, Josef Keller", path: "./assets/Images/Stolperstein/Benesi/1Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.Z.b.5478, Unbekannt", path: "./assets/Images/Stolperstein/Benesi/2Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.101, Unbekannt", path: "./assets/Images/Stolperstein/Benesi/3Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.294, Josef Keller", path: "./assets/Images/Stolperstein/Benesi/4Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.A.b.705, Siegfried Leiter", path: "./assets/Images/Stolperstein/Benesi/5Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.518, Unbekannt", path: "./assets/Images/Stolperstein/Benesi/6Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.1018, Ernst Deuerlein", path: "./assets/Images/Stolperstein/Benesi/7Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt: "Hildegard Benesi", infoEn: "Hildegard Benesi", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Benesi/Benesi_Hildegard/Hildegard_Benesi_Baby.jpeg")
    ], 
    profilePics: ["./assets/Images/Stolperstein/Benesi/Benesi_Hildegard/Benesi_Hildegard.jpg", "./assets/Images/Stolperstein/Benesi/Benesi_Hildegard/Hildegard_Benesi_Baby.jpeg"],
    filters: [Filter.Auschwitz, Filter.Hauptstrasse, Filter.Benesi]
  ),

  StolpersteinModel
  (
    name: "Jakob Benesi",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+2%2CErlangen%2CGermany",
    shortTextDt: sh_Benesi_Jakob_dt,
    shortTextEn: sh_Benesi_Jakob_en, 
    textDt: txt_Benesi_dt, 
    textEn: txt_Benesi_Jakob_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Benesi.mp3", 
    audioUrlEn: "", 
    sources: src_Benesi_Jakob, 
    galleryImages: 
    [
      PictureModel(infoDt:"Jakob Benesi - Stolperstein", infoEn: "Jakob Benesi - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Benesi/Benesi_Jakob/Benesi_Jakob.jpg"),
      PictureModel(infoDt:"Jakob Benesi", infoEn: "Jakob Benesi", source: "Stadtarchiv Erlangen, VI.F.b.341_2, Ausschnitt, Werner Bösel", path: "./assets/Images/Stolperstein/Benesi/Benesi_Jakob/Benesi_Jakob_PT.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VIII.4.K.83/26, Josef Keller", path: "./assets/Images/Stolperstein/Benesi/1Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.Z.b.5478, Unbekannt", path: "./assets/Images/Stolperstein/Benesi/2Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.101, Unbekannt", path: "./assets/Images/Stolperstein/Benesi/3Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.294, Josef Keller", path: "./assets/Images/Stolperstein/Benesi/4Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.A.b.705, Siegfried Leiter", path: "./assets/Images/Stolperstein/Benesi/5Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.518, Unbekannt", path: "./assets/Images/Stolperstein/Benesi/6Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.1018, Ernst Deuerlein", path: "./assets/Images/Stolperstein/Benesi/7Benesi_Hauptstrasse_2.jpg"),
      PictureModel(infoDt: "Gottliebe & Jakob Benesi", infoEn: "Gottliebe & Jakob Benesi", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Benesi/Benesi_Gottliebe_Jakob.jpeg"),
      PictureModel(infoDt: "Jakob Benesi", infoEn: "Jakob Benesi", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Benesi/Benesi_Jakob/Benesi_Jacob.jpeg"),
    ], 
    profilePics: ["./assets/Images/Stolperstein/Benesi/Benesi_Jakob/Benesi_Jakob.jpg", "./assets/Images/Stolperstein/Benesi/Benesi_Jakob/Benesi_Jakob_PT.jpg"], 
    filters: [Filter.Auschwitz, Filter.Hauptstrasse, Filter.Benesi]
  ),

  StolpersteinModel
  (
    name: "Alfred Cohn",
    location: "http://www.google.com/maps/search/?api=1&query=Bayreuther+Strasse+17+A%2CErlangen%2CGermany",
    shortTextDt: sh_Cohn_Alfred_dt,
    shortTextEn: sh_Cohn_Alfred_en, 
    textDt: txt_Cohn_Alfred_dt, 
    textEn: txt_Cohn_Alfred_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Alfred_Cohn.mp3", 
    audioUrlEn: "Audio/Stolperstein/En/Alfred_Cohn.mp3", 
    sources: src_Cohn_Alfred, 
    galleryImages: 
    [
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VIII.5.D.A.252, Axel Dorsch", path: "./assets/Images/Stolperstein/Cohn/Cohn_Alfred/1Cohn_A_Bayreutherstrasse_17A Kopie 2.jpg"),
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VI.B.b.1019, Unbekannt", path: "./assets/Images/Stolperstein/Cohn/Cohn_Alfred/2Cohn_A_Bayreutherstrasse_17A Kopie 2.jpg"),
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VI.A.b.1276, Axel Dorsch", path: "./assets/Images/Stolperstein/Cohn/Cohn_Alfred/3Cohn_A_Bayreutherstrasse_17A Kopie 2.jpg"),
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VI.MM.b.181, Axel Dorsch", path: "./assets/Images/Stolperstein/Cohn/Cohn_Alfred/4Cohn_A_Bayreutherstrasse_17A Kopie 2.jpg"),
      PictureModel(infoDt:"Alfred Cohn - Stolperstein", infoEn: "Alfred Cohn - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Cohn/Cohn_Alfred/Cohn_Alfred.jpg"),
      PictureModel(infoDt: "Alfred Cohn", infoEn: "Alfred Cohn", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Cohn/Cohn_Alfred/Cohn_Alfred.jpeg")
    ], 
    profilePics: ["./assets/Images/Stolperstein/Cohn/Cohn_Alfred/Cohn_Alfred.jpg", "./assets/Images/Stolperstein/Cohn/Cohn_Alfred/Cohn_Alfred.jpeg"], 
    filters: [Filter.Erlangen, Filter.Bayreuther_Strasse, Filter.Cohn]
  ),

  StolpersteinModel
  (
    name: "Rosa Cohn",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+58%2CErlangen%2CGermany",
    shortTextDt: sh_Cohn_Rosa_dt,
    shortTextEn: sh_Cohn_Rosa_en, 
    textDt: txt_Cohn_Rosa_dt, 
    textEn: txt_Cohn_Rosa_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Rosa_Cohn.mp3", 
    audioUrlEn: "Audio/Stolperstein/En/Rosa_Cohn.mp3",  
    sources: src_Cohn_Rosa, 
    galleryImages: 
    [
      PictureModel(infoDt:"Hauptstrasse 58", infoEn: "Hauptstrasse 58", source: "Stadtarchiv Erlangen, VIII.4.K.141/12, Josef Keller", path: "./assets/Images/Stolperstein/Cohn/Cohn_Rosa/1Cohn_R_Hauptstrasse_58 Kopie.jpg"),
      PictureModel(infoDt:"Hauptstrasse 58", infoEn: "Hauptstrasse 58", source: "Stadtarchiv Erlangen, VI.MM.b.882, Axel Dorsch", path: "./assets/Images/Stolperstein/Cohn/Cohn_Rosa/2Cohn_R_Hauptstrasse_58 Kopie.jpg"),
      PictureModel(infoDt:"Hauptstrasse 58", infoEn: "Hauptstrasse 58", source: "Stadtarchiv Erlangen, VI.A.b.664, Georg Hopp", path: "./assets/Images/Stolperstein/Cohn/Cohn_Rosa/3Cohn_R_Hauptstrasse_58 Kopie.jpg"),
      PictureModel(infoDt:"Rosa Cohn - Stolperstein", infoEn: "Rosa Cohn - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Cohn/Cohn_Rosa/Cohn_Rosa.jpg"),
          
    ], 
    profilePics: ["./assets/Images/Stolperstein/Cohn/Cohn_Rosa/Cohn_Rosa.jpg"], 
    filters: [Filter.Auschwitz, Filter.Hauptstrasse, Filter.Cohn]
  ),

  StolpersteinModel
  (
    name: "Adolf Dreifuss",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+83%2CErlangen%2CGermany",
    shortTextDt: sh_Dreifuss_Adolf_dt,
    shortTextEn: sh_Dreifuss_Adolf_en, 
    textDt: txt_Dreifuss_Adolf_dt, 
    textEn: txt_Dreifuss_Adolf_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Adolf_Dreifuß.mp3", 
    audioUrlEn: "Audio/Stolperstein/En/Adolf_Dreifuß.mp3", 
    sources: src_Dreifuss_Adolf, 
    galleryImages:  
    [
      PictureModel(infoDt:"Adolf Dreifuss - Stolperstein", infoEn: "Adolf Dreifuss - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Dreifuss_Adolf/Dreifuss_Adolf.jpg"),
      PictureModel(infoDt:"Adolf Dreifuss", infoEn: "Adolf Dreifuss", source: "Stadtarchiv Erlangen, Morgenroth 116, Ausschnitt, Fritz Morgenroth", path: "./assets/Images/Stolperstein/Dreifuss_Adolf/Dreifuss_Adolf_PT.jpg"),
      PictureModel(infoDt: "Adolf Dreifuss", infoEn: "Adolf Dreifuss", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Dreifuss_Adolf/Dreifuss_Adolf.jpeg")
    ], 
    profilePics:  ["./assets/Images/Stolperstein/Dreifuss_Adolf/Dreifuss_Adolf.jpg", "./assets/Images/Stolperstein/Dreifuss_Adolf/Dreifuss_Adolf_PT.jpg"], 
    filters:  [Filter.Theresienstadt, Filter.Hauptstrasse, Filter.Dreifuss]
  ),

  StolpersteinModel
  (
    name: "Bertha Fleischhauer",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+83%2CErlangen%2CGermany",
    shortTextDt: sh_Fleischhauer_Bertha_dt,
    shortTextEn: sh_Fleischhauer_Bertha_en, 
    textDt: txt_Fleischhauer_Bertha_dt, 
    textEn: txt_Fleischhauer_Bertha_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Bertha_Fleischhauer.mp3", 
    audioUrlEn: "Audio/Stolperstein/En/Bertha_Fleischhauer.mp3", 
    sources: src_Fleischhauer_Bertha, 
    galleryImages: 
    [
      PictureModel(infoDt:"Bertha Fleischhauer - Stolperstein", infoEn: "Bertha Fleischhauer - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Fleischhauer_Bertha/Fleischhauer_Bertha.jpg"),
      PictureModel(infoDt:"Bertha Fleischhauer", infoEn: "Bertha Fleischhauer", source: "Stadtarchiv Erlangen, Morgenroth 114, Ausschnitt, Fritz Morgenroth", path: "./assets/Images/Stolperstein/Fleischhauer_Bertha/Fleischhauer_Bertha_PT.jpg"),
    ], 
    profilePics: ["./assets/Images/Stolperstein/Fleischhauer_Bertha/Fleischhauer_Bertha.jpg", "./assets/Images/Stolperstein/Fleischhauer_Bertha/Fleischhauer_Bertha_PT.jpg",], 
    filters: [Filter.Izbica, Filter.Hauptstrasse, Filter.Fleischhauer]
  ),

  StolpersteinModel
  (
    name: "Gustav Heyer",
    location: "http://www.google.com/maps/search/?api=1&query=Österreicher+Strasse+12+A%2CErlangen%2CGermany",
    shortTextDt: sh_Heyer_Gustav_dt,
    shortTextEn: sh_Heyer_Gustav_en, 
    textDt: txt_Heyer_Gustav_dt, 
    textEn: txt_Heyer_Gustav_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Gustav_Heyer.mp3", 
    audioUrlEn: "Audio/Stolperstein/En/Gustav_Heyer.mp3", 
    sources: src_Heyer_Gustav, 
    galleryImages: 
    [
     PictureModel(infoDt:"Oesterreicher Strasse 12A", infoEn: "Oesterreicher Strasse 12A", source: "Stadtarchiv Erlangen, VI.M.b.418, Josef Keller", path: "./assets/Images/Stolperstein/Heyer_Gustav/1Heyer_G_Österreicherstrasse_12A.jpg"),
     PictureModel(infoDt:"Gustav Heyer - Stolperstein", infoEn: "Gustav Heyer - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Heyer_Gustav/Heyer_Gustav.jpg"),
    ], 
    profilePics: ["./assets/Images/Stolperstein/Heyer_Gustav/Heyer_Gustav.jpg",], 
    filters: [Filter.Dachau, Filter.Oesterreicher_Strasse, Filter.Heyer]
  ),

  StolpersteinModel
  (
    name: "Wilma Katz",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+2%2CErlangen%2CGermany",
    shortTextDt: sh_Katz_Wilma_dt,
    shortTextEn: sh_Katz_Wilma_en, 
    textDt: txt_Katz_Wilma_dt, 
    textEn: txt_Katz_Wilma_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Wilma_Katz.mp3",
    audioUrlEn: "", 
    sources: src_Katz_Wilma, 
    galleryImages: 
    [
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VIII.4.K.83/26, Josef Keller", path: "./assets/Images/Stolperstein/Katz_Wilma/1Katz_W_Hauptstrasse_2 Kopie.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.Z.b.5478, Unbekannt", path: "./assets/Images/Stolperstein/Katz_Wilma/2Katz_W_Hauptstrasse_2 Kopie.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.101, Unbekannt", path: "./assets/Images/Stolperstein/Katz_Wilma/3Katz_W_Hauptstrasse_2 Kopie.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.294, Josef Keller", path: "./assets/Images/Stolperstein/Katz_Wilma/4Katz_W_Hauptstrasse_2 Kopie.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.A.b.705, Siegfried Leiter", path: "./assets/Images/Stolperstein/Katz_Wilma/5Katz_W_Hauptstrasse_2 Kopie.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.518, Unbekannt", path: "./assets/Images/Stolperstein/Katz_Wilma/6Katz_W_Hauptstrasse_2 Kopie.jpg"),
      PictureModel(infoDt:"Hauptstrasse 2", infoEn: "Hauptstrasse 2", source: "Stadtarchiv Erlangen, VI.M.b.1018, Ernst Deuerlein", path: "./assets/Images/Stolperstein/Katz_Wilma/7Katz_W_Hauptstrasse_2 Kopie.jpg"),
      PictureModel(infoDt:"Wilma Katz - Stolperstein", infoEn: "Wilma Katz - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Katz_Wilma/Katz_Wilma.jpg"),
      PictureModel(infoDt:"Wilma Katz", infoEn: "Wilma Katz", source: "Stadtarchiv Erlangen, Stadtarchiv Erlangen, ohne Signatur, Unbekannt", path: "./assets/Images/Stolperstein/Katz_Wilma/Katz_Wilma_PT.jpg"),
      PictureModel(infoDt: "Wilma Katz", infoEn: "Wilma Katz", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Katz_Wilma/Katz_Wilma.jpeg")
    ], 
    profilePics: ["./assets/Images/Stolperstein/Katz_Wilma/Katz_Wilma.jpg", "./assets/Images/Stolperstein/Katz_Wilma/Katz_Wilma_PT.jpg",], 
    filters: [Filter.Theresienstadt, Filter.Hauptstrasse, Filter.Katz]
  ),

  StolpersteinModel
  (
    name: "Jenny Rotenstein",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+63%2CErlangen%2CGermany",
    shortTextDt: sh_Rotenstein_Jenny_dt,
    shortTextEn: sh_Rotenstein_Jenny_en, 
    textDt: txt_Rotenstein_Jenny_dt, 
    textEn: txt_Rotenstein_Jenny_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Jenny_Rothenstein.mp3",
    audioUrlEn: "Audio/Stolperstein/En/Jenny_Rothenstein.mp3", 
    sources: src_Rotenstein_Jenny,
    galleryImages: 
    [
      PictureModel(infoDt:"Jenny Rotenstein - Stolperstein", infoEn: "Jenny Rotenstein - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Rotenstein/Rotenstein_Jenny/Rotenstein_Jenny.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VIII.4.K.141/12, Josef Keller", path: "./assets/Images/Stolperstein/Rotenstein/1Rotenstein_Hauptstrasse_63.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VIII.7396.N.2/2, Rudi Stümpel", path: "./assets/Images/Stolperstein/Rotenstein/2Rotenstein_Hauptstrasse_63.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VI.M.b.1045, Ernst Deuerlein", path: "./assets/Images/Stolperstein/Rotenstein/3Rotenstein_Hauptstrasse_63.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VI.MM.b.888, Axel Dorsch", path: "./assets/Images/Stolperstein/Rotenstein/4Rotenstein_Hauptstrasse_63.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VI.A.b.664, Georg Hopp", path: "./assets/Images/Stolperstein/Rotenstein/5Rotenstein_Hauptstrasse_63.jpg"),
          
    ], 
    profilePics: ["./assets/Images/Stolperstein/Rotenstein/Rotenstein_Jenny/Rotenstein_Jenny.jpg"], 
    filters: [Filter.Theresienstadt, Filter.Hauptstrasse, Filter.Rotenstein],
  ),

  StolpersteinModel
  (
    name: "Simon Rotenstein",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+63%2CErlangen%2CGermany",
    shortTextDt: sh_Rotenstein_Simon_dt,
    shortTextEn: sh_Rotenstein_Simon_en, 
    textDt: txt_Rotenstein_Simon_dt, 
    textEn: txt_Rotenstein_Simon_en ,
    audioUrlDt: "Audio/Stolperstein/Dt/Simon_Rothenstein.mp3", 
    audioUrlEn: "Audio/Stolperstein/En/Simon_Rothenstein.mp3", 
    sources: src_Rotenstein_Simon, 
    galleryImages: 
    [
      PictureModel(infoDt:"Simon Rotenstein - Stolperstein", infoEn: "Simon Rotenstein - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Rotenstein/Rotenstein_Simon/Rotenstein_Simon.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VIII.4.K.141/12, Josef Keller", path: "./assets/Images/Stolperstein/Rotenstein/1Rotenstein_Hauptstrasse_63.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VIII.7396.N.2/2, Rudi Stümpel", path: "./assets/Images/Stolperstein/Rotenstein/2Rotenstein_Hauptstrasse_63.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VI.M.b.1045, Ernst Deuerlein", path: "./assets/Images/Stolperstein/Rotenstein/3Rotenstein_Hauptstrasse_63.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VI.MM.b.888, Axel Dorsch", path: "./assets/Images/Stolperstein/Rotenstein/4Rotenstein_Hauptstrasse_63.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VI.A.b.664, Georg Hopp", path: "./assets/Images/Stolperstein/Rotenstein/5Rotenstein_Hauptstrasse_63.jpg"),
      PictureModel(infoDt: "Simon Rotenstein", infoEn: "Simon Rotenstein", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Rotenstein/Rotenstein_Simon/Rotenstein_Simon.jpeg")
    ], 
    profilePics: ["./assets/Images/Stolperstein/Rotenstein/Rotenstein_Simon/Rotenstein_Simon.jpg", "./assets/Images/Stolperstein/Rotenstein/Rotenstein_Simon/Rotenstein_Simon.jpeg"],
    filters: [Filter.Erlangen, Filter.Hauptstrasse, Filter.Rotenstein],
  ),

  StolpersteinModel
  (
    name: "Sophie Rotenstein",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+63%2CErlangen%2CGermany",
    shortTextDt: sh_Rotenstein_Sophie_dt,
    shortTextEn: sh_Rotenstein_Sophie_en, 
    textDt: txt_Rotenstein_Sophie_dt, 
    textEn: txt_Rotenstein_Sophie_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Sophie_Rothenstein.mp3", 
    audioUrlEn: "Audio/Stolperstein/En/Sophie_Rothenstein.mp3", 
    sources: src_Rotenstein_Sophie, 
    galleryImages: 
    [
      PictureModel(infoDt:"Sophie Rotenstein - Stolperstein", infoEn: "Sophie Rotenstein - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Rotenstein/Rotenstein_Sophie/Rotenstein_Sophie.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VIII.4.K.141/12, Josef Keller", path: "./assets/Images/Stolperstein/Rotenstein/1Rotenstein_Hauptstrasse_63.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VIII.7396.N.2/2, Rudi Stümpel", path: "./assets/Images/Stolperstein/Rotenstein/2Rotenstein_Hauptstrasse_63.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VI.M.b.1045, Ernst Deuerlein", path: "./assets/Images/Stolperstein/Rotenstein/3Rotenstein_Hauptstrasse_63.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VI.MM.b.888, Axel Dorsch", path: "./assets/Images/Stolperstein/Rotenstein/4Rotenstein_Hauptstrasse_63.jpg"),
      PictureModel(infoDt:"Hauptstrasse 63", infoEn: "Hauptstrasse 63", source: "Stadtarchiv Erlangen, VI.A.b.664, Georg Hopp", path: "./assets/Images/Stolperstein/Rotenstein/5Rotenstein_Hauptstrasse_63.jpg"),
      PictureModel(infoDt: "Sophie Rotenstein", infoEn: "Sophie Rotenstein", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Rotenstein/Rotenstein_Sophie/Rotenstein_Sophie.jpeg"),
    ], 
    profilePics: ["./assets/Images/Stolperstein/Rotenstein/Rotenstein_Sophie/Rotenstein_Sophie.jpg", "./assets/Images/Stolperstein/Rotenstein/Rotenstein_Sophie/Rotenstein_Sophie.jpeg"], 
    filters: [Filter.Theresienstadt, Filter.Hauptstrasse, Filter.Rotenstein],
  ),

  StolpersteinModel
  (
    name: "Frieda Uhlfelder",
    location: "http://www.google.com/maps/search/?api=1&query=Bayreuther+Strasse+17+A%2CErlangen%2CGermany",
    shortTextDt: sh_Uhlfelder_Frieda_dt,
    shortTextEn: sh_Uhlfelder_Frieda_en, 
    textDt: txt_Uhlfelder_dt, 
    textEn: txt_Uhlfelder_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Uhlfelder.mp3", 
    audioUrlEn: "", 
    sources: src_Uhlfelder_Frieda, 
    galleryImages: 
    [
      PictureModel(infoDt:"Frieda Uhlfelder - Stolperstein", infoEn: "Frieda Uhlfelder - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Uhlfelder/Uhlfelder_Frieda/Uhlfelder_Frieda.jpg"),
      PictureModel(infoDt:"Frieda Uhlfelder", infoEn: "Frieda Uhlfelder", source: "Stadtarchiv Erlangen, Stadtarchiv Erlangen, ohne Signatur, Jakob Benesi", path: "./assets/Images/Stolperstein/Uhlfelder/Uhlfelder_Frieda/Uhlfelder_Frieda_PT.jpg"),
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VIII.5.D.A.252, Axel Dorsch", path: "./assets/Images/Stolperstein/Uhlfelder/1Uhlfelder_Bayreutherstrasse_17A.jpg"),
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VI.B.b.1019, Unbekannt", path: "./assets/Images/Stolperstein/Uhlfelder/2Uhlfelder_Bayreutherstrasse_17A.jpg"),
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VI.A.b.1276, Axel Dorsch", path: "./assets/Images/Stolperstein/Uhlfelder/3Uhlfelder_Bayreutherstrasse_17A.jpg"),
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VI.MM.b.181, Axel Dorsch", path: "./assets/Images/Stolperstein/Uhlfelder/4Uhlfelder_Bayreutherstrasse_17A.jpg"),
      PictureModel(infoDt: "Frieda Uhlfelder", infoEn: "Frieda Uhlfelder", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Uhlfelder/Uhlfelder_Frieda/Uhlfelder_Frieda.jpeg")
    ], 
    profilePics: ["./assets/Images/Stolperstein/Uhlfelder/Uhlfelder_Frieda/Uhlfelder_Frieda.jpg", "./assets/Images/Stolperstein/Uhlfelder/Uhlfelder_Frieda/Uhlfelder_Frieda_PT.jpg"], 
    filters: [Filter.Theresienstadt, Filter.Bayreuther_Strasse, Filter.Uhlfelder],
  ),

  StolpersteinModel
  (
    name: "Josef Uhlfelder",
    location: "http://www.google.com/maps/search/?api=1&query=Bayreuther+Strasse+17+A%2CErlangen%2CGermany",
    shortTextDt: sh_Uhlfelder_Josef_dt,
    shortTextEn: sh_Uhlfelder_Josef_en, 
    textDt: txt_Uhlfelder_dt, 
    textEn: txt_Uhlfelder_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Uhlfelder.mp3",  
    audioUrlEn: "", 
    sources: src_Uhlfelder_Josef, 
    galleryImages: 
    [
      PictureModel(infoDt:"Josef Uhlfelder - Stolperstein", infoEn: "Josef Uhlfelder - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Uhlfelder/Uhlfelder_Josef/Uhlfelder_Josef.jpg"),
      PictureModel(infoDt:"Josef Uhlfelder", infoEn: "Josef Uhlfelder", source: "Stadtarchiv Erlangen, VI.F.b.556_3, Ausschnitt, Werner Bösel", path: "./assets/Images/Stolperstein/Uhlfelder/Uhlfelder_Josef/Uhlfelder_Josef_PT.jpg"),
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VIII.5.D.A.252, Axel Dorsch", path: "./assets/Images/Stolperstein/Uhlfelder/1Uhlfelder_Bayreutherstrasse_17A.jpg"),
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VI.B.b.1019, Unbekannt", path: "./assets/Images/Stolperstein/Uhlfelder/2Uhlfelder_Bayreutherstrasse_17A.jpg"),
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VI.A.b.1276, Axel Dorsch", path: "./assets/Images/Stolperstein/Uhlfelder/3Uhlfelder_Bayreutherstrasse_17A.jpg"),
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VI.MM.b.181, Axel Dorsch", path: "./assets/Images/Stolperstein/Uhlfelder/4Uhlfelder_Bayreutherstrasse_17A.jpg"),
      PictureModel(infoDt: "Josef Uhlfelder", infoEn: "Josef Uhlfelder", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Uhlfelder/Uhlfelder_Josef/Uhlfelder_Josef.jpeg")
    ], 
    profilePics: ["./assets/Images/Stolperstein/Uhlfelder/Uhlfelder_Josef/Uhlfelder_Josef.jpg", "./assets/Images/Stolperstein/Uhlfelder/Uhlfelder_Josef/Uhlfelder_Josef_PT.jpg"], 
    filters: [Filter.Theresienstadt, Filter.Bayreuther_Strasse, Filter.Uhlfelder],
  ),

  StolpersteinModel
  (
    name: "Hildegard Laink-Vissing",
    location: "http://www.google.com/maps/search/?api=1&query=Bayreuther+Strasse+17+A%2CErlangen%2CGermany",
    shortTextDt: sh_Vissing_Hildegard_dt,
    shortTextEn: sh_Vissing_Hildegard_en, 
    textDt: txt_Vissing_Hildegard_dt, 
    textEn: txt_Vissing_Hildegard_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Hildegard_Vissing.mp3",  
    audioUrlEn: "Audio/Stolperstein/En/Hildegard_Vissing.mp3",  
    sources: src_Vissing_Hildegard, 
    galleryImages: 
    [
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VIII.5.D.A.252, Axel Dorsch", path: "./assets/Images/Stolperstein/Vissing_Hildegard/1Laink-Vissing_Bayreutherstrasse_17A Kopie.jpg"),
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VI.B.b.1019, Unbekannt", path: "./assets/Images/Stolperstein/Vissing_Hildegard/2Laink-Vissing_Bayreutherstrasse_17A Kopie.jpg"),
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VI.A.b.1276, Axel Dorsch", path: "./assets/Images/Stolperstein/Vissing_Hildegard/3Laink-Vissing_Bayreutherstrasse_17A Kopie.jpg"),
      PictureModel(infoDt:"Bayreuther Strasse 17A", infoEn: "Bayreuther Strasse 17A", source: "Stadtarchiv Erlangen, VI.MM.b.181, Axel Dorsch", path: "./assets/Images/Stolperstein/Vissing_Hildegard/4Laink-Vissing_Bayreutherstrasse_17A Kopie.jpg"),
      PictureModel(infoDt:"Hildegard Vissing - Stolperstein", infoEn: "Hildegard Vissing - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Vissing_Hildegard/Vissing_Hildegard.jpg"),
      PictureModel(infoDt:"Hildegard Vissing", infoEn: "Hildegard Vissing", source: "Stadtarchiv Erlangen, Morgenroth 115, Ausschnitt, Fritz Morgenroth", path: "./assets/Images/Stolperstein/Vissing_Hildegard/Vissing_Hildegard_PT.jpg"),
      PictureModel(infoDt: "Hildegard Vissing", infoEn: "Hildegard Vissing", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Vissing_Hildegard/Vissing_Hildegard.jpeg")
    ], 
    profilePics: ["./assets/Images/Stolperstein/Vissing_Hildegard/Vissing_Hildegard.jpg", "./assets/Images/Stolperstein/Vissing_Hildegard/Vissing_Hildegard_PT.jpg",],
    filters: [Filter.Auschwitz, Filter.Bayreuther_Strasse, Filter.Vissing],
  ),

  StolpersteinModel
  (
    name: "Thekla Wassermann",
    location: "http://www.google.com/maps/search/?api=1&query=Einhornstrasse+5%2CErlangen%2CGermany",
    shortTextDt: sh_Wassermann_Thekla_dt,
    shortTextEn: sh_Wassermann_Thekla_en, 
    textDt: txt_Wassermann_Thekla_dt, 
    textEn: txt_Wassermann_Thekla_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Thekla_Wassermann.mp3",  
    audioUrlEn: "", 
    sources: src_Wassermann_Thekla, 
    galleryImages: 
    [
      PictureModel(infoDt:"Einhornstrasse 7", infoEn: "Einhornstrasse 7", source: "Stadtarchiv Erlangen, VI.M.b.1788, Ernst Deuerlein", path: "./assets/Images/Stolperstein/Wassermann_Thekla/1Wassermann_T_Einhornstrasse_7.jpg"),
      PictureModel(infoDt:"Thekla Wassermann - Stolperstein", infoEn: "Thekla Wassermann - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Wassermann_Thekla/Wassermann_Thekla.jpg"),
      PictureModel(infoDt:"Thekla Wassermann", infoEn: "Thekla Wassermann", source: "Stadtarchiv Erlangen, Morgenroth 114, Ausschnitt, Fritz Morgenroth", path: "./assets/Images/Stolperstein/Wassermann_Thekla/Wassermann_Thekla_PT.jpg"),
      PictureModel(infoDt: "Thekla Wassermann", infoEn: "Thekla Wassermann", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Wassermann_Thekla/Wassermann_Thekla.jpeg")
    ], 
    profilePics: ["./assets/Images/Stolperstein/Wassermann_Thekla/Wassermann_Thekla.jpg", "./assets/Images/Stolperstein/Wassermann_Thekla/Wassermann_Thekla_PT.jpg",], 
    filters: [Filter.Riga, Filter.Einhornstrasse, Filter.Wassermann],
  ),

  StolpersteinModel
  (
    name: "Klothilde Weglein",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+58%2CErlangen%2CGermany",
    shortTextDt: sh_Weglein_Klothilde_dt,
    shortTextEn: sh_Weglein_Klothilde_en, 
    textDt: txt_Weglein_Klothilde_dt, 
    textEn: txt_Weglein_Klothilde_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Klothilde_Weglein.mp3",  
    audioUrlEn: "Audio/Stolperstein/En/Klothilde_Weglein.mp3", 
    sources: src_Weglein_Klothilde, 
    galleryImages: 
    [
      PictureModel(infoDt:"Klothilde Weglein - Stolperstein", infoEn: "Klothilde Weglein - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Weglein/Weglein_Klothilde/Weglein_Klothilde.jpg"),
      PictureModel(infoDt:"Hauptstrasse 58", infoEn: "Hauptstrasse 58", source: "Stadtarchiv Erlangen, VIII.4.K.141/12, Josef Keller", path: "./assets/Images/Stolperstein/Weglein/1Weglein_Hauptstrasse_58.jpg"),
      PictureModel(infoDt:"Hauptstrasse 58", infoEn: "Hauptstrasse 58", source: "Stadtarchiv Erlangen, VI.MM.b.882, Axel Dorsch", path: "./assets/Images/Stolperstein/Weglein/2Weglein_Hauptstrasse_58.jpg"),
      PictureModel(infoDt:"Hauptstrasse 58", infoEn: "Hauptstrasse 58", source: "Stadtarchiv Erlangen, VI.A.b.664, Georg Hopp", path: "./assets/Images/Stolperstein/Weglein/3Weglein_Hauptstrasse_58.jpg"),
      PictureModel(infoDt: "Klothilde Weglein", infoEn: "Klothilde Weglein", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Weglein/Weglein_Klothilde/Weglein_Klothilde.jpeg")
    ], 
    profilePics: ["./assets/Images/Stolperstein/Weglein/Weglein_Klothilde/Weglein_Klothilde.jpg", "./assets/Images/Stolperstein/Weglein/Weglein_Klothilde/Weglein_Klothilde.jpeg"], 
    filters: [Filter.Theresienstadt, Filter.Hauptstrasse, Filter.Weglein],
  ),

  StolpersteinModel
  (
    name: "Samuel Weglein",
    location: "http://www.google.com/maps/search/?api=1&query=Hauptstrasse+58%2CErlangen%2CGermany",
    shortTextDt: sh_Weglein_Samuel_dt,
    shortTextEn: sh_Weglein_Samuel_en, 
    textDt: txt_Weglein_Samuel_dt, 
    textEn: txt_Weglein_Samuel_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Samuel_Weglein.mp3", 
    audioUrlEn: "Audio/Stolperstein/En/Samuel_Weglein.mp3", 
    sources: src_Weglein_Samuel, 
    galleryImages: 
    [
      PictureModel(infoDt:"Samuel Weglein - Stolperstein", infoEn: "Samuel Weglein - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Weglein/Weglein_Samuel/Weglein_Samuel.jpg"),
      PictureModel(infoDt:"Hauptstrasse 58", infoEn: "Hauptstrasse 58", source: "Stadtarchiv Erlangen, VIII.4.K.141/12, Josef Keller", path: "./assets/Images/Stolperstein/Weglein/1Weglein_Hauptstrasse_58.jpg"),
      PictureModel(infoDt:"Hauptstrasse 58", infoEn: "Hauptstrasse 58", source: "Stadtarchiv Erlangen, VI.MM.b.882, Axel Dorsch", path: "./assets/Images/Stolperstein/Weglein/2Weglein_Hauptstrasse_58.jpg"),
      PictureModel(infoDt:"Hauptstrasse 58", infoEn: "Hauptstrasse 58", source: "Stadtarchiv Erlangen, VI.A.b.664, Georg Hopp", path: "./assets/Images/Stolperstein/Weglein/3Weglein_Hauptstrasse_58.jpg"),
      PictureModel(infoDt: "Samuel Weglein", infoEn: "Samuel Weglein", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Weglein/Weglein_Samuel/Weglein_Samuel.jpeg")
    ], 
    profilePics: ["./assets/Images/Stolperstein/Weglein/Weglein_Samuel/Weglein_Samuel.jpg", "./assets/Images/Stolperstein/Weglein/Weglein_Samuel/Weglein_Samuel.jpeg"],
    filters: [Filter.Theresienstadt, Filter.Hauptstrasse, Filter.Weglein],
  ),

  StolpersteinModel
  (
    name: "Ivan Weinstock",
    location: "http://www.google.com/maps/search/?api=1&query=Calvinstrasse+1%2CErlangen%2CGermany",
    shortTextDt: sh_Weinstock_Ivan_dt,
    shortTextEn: sh_Weinstock_Ivan_en, 
    textDt: txt_Weinstock_Ivan_dt, 
    textEn: txt_Weinstock_Ivan_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Iwan_Weinstock.mp3",
    audioUrlEn: "Audio/Stolperstein/En/Iwan_Weinstock.mp3", 
    sources: src_Weinstock_Ivan,
    galleryImages: 
    [
      PictureModel(infoDt:"Calvinstrasse 1", infoEn: "Calvinstrasse 1", source: "Stadtarchiv Erlangen, VI.M.b.1400, Unbekannt", path: "./assets/Images/Stolperstein/Weinstock_Ivan/10Weinstock_Calvinstrasse_1.jpg"),
      PictureModel(infoDt:"Calvinstrasse 1", infoEn: "Calvinstrasse 1", source: "Stadtarchiv Erlangen, VI.M.b.1401, Unbekannt", path: "./assets/Images/Stolperstein/Weinstock_Ivan/11Weinstock_Calvinstrasse_1.jpg"),
      PictureModel(infoDt:"Calvinstrasse 1", infoEn: "Calvinstrasse 1", source: "Stadtarchiv Erlangen, VIII.4.K.177/5, Josef Keller", path: "./assets/Images/Stolperstein/Weinstock_Ivan/1Weinstock_Calvinstrasse_1.jpg"),
      PictureModel(infoDt:"Calvinstrasse 1", infoEn: "Calvinstrasse 1", source: "Stadtarchiv Erlangen, DiaNr: 14071 BoxNr: 14, Eduard Rühl", path: "./assets/Images/Stolperstein/Weinstock_Ivan/2Weinstock_Calvinstrasse_1.jpg"),
      PictureModel(infoDt:"Calvinstrasse 1", infoEn: "Calvinstrasse 1", source: "Stadtarchiv Erlangen, DiaNr: 14072 BoxNr: 14, Eduard Rühl", path: "./assets/Images/Stolperstein/Weinstock_Ivan/3Weinstock_Calvinstrasse_1.jpg"),
      PictureModel(infoDt:"Calvinstrasse 1", infoEn: "Calvinstrasse 1", source: "Stadtarchiv Erlangen, VIII.5.D.10.J.31, Helmut Schmidt", path: "./assets/Images/Stolperstein/Weinstock_Ivan/4Weinstock_Calvinstrasse_1.jpg"),
      PictureModel(infoDt:"Calvinstrasse 1", infoEn: "Calvinstrasse 1", source: "Stadtarchiv Erlangen, VI.M.b.126, Hans Vogel", path: "./assets/Images/Stolperstein/Weinstock_Ivan/5Weinstock_Calvinstrasse_1.jpg"),
      PictureModel(infoDt:"Calvinstrasse 1", infoEn: "Calvinstrasse 1", source: "Stadtarchiv Erlangen, VI.M.b.1404, Unbekannt", path: "./assets/Images/Stolperstein/Weinstock_Ivan/6Weinstock_Calvinstrasse_1.jpg"),
      PictureModel(infoDt:"Calvinstrasse 1", infoEn: "Calvinstrasse 1", source: "Stadtarchiv Erlangen, VI.M.b.1402, Unbekannt", path: "./assets/Images/Stolperstein/Weinstock_Ivan/7Weinstock_Calvinstrasse_1.jpg"),
      PictureModel(infoDt:"Calvinstrasse 1", infoEn: "Calvinstrasse 1", source: "Stadtarchiv Erlangen, VI.M.b.1403, Hans Vogel", path: "./assets/Images/Stolperstein/Weinstock_Ivan/8Weinstock_Calvinstrasse_1.jpg"),
      PictureModel(infoDt:"Calvinstrasse 1", infoEn: "Calvinstrasse 1", source: "Stadtarchiv Erlangen, VI.M.b.513, Hildegard Klein", path: "./assets/Images/Stolperstein/Weinstock_Ivan/9Weinstock_Calvinstrasse_1.jpg"),
      PictureModel(infoDt:"Ivan Weinstock - Stolperstein", infoEn: "Ivan Weinstock - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Weinstock_Ivan/Weinstock_Ivan.jpg"),
      PictureModel(infoDt:"Ivan Weinstock", infoEn: "Ivan Weinstock", source: "Stadtarchiv Erlangen, VI.F.b.356_4, Ausschnitt, Werner Bösel", path: "./assets/Images/Stolperstein/Weinstock_Ivan/Weinstock_Iwan_PT.jpg"),
      PictureModel(infoDt: "Ivan Weinstock", infoEn: "Ivan Weinstock", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Weinstock_Ivan/Weinstock_Ivan.jpeg")
    ], 
    profilePics: ["./assets/Images/Stolperstein/Weinstock_Ivan/Weinstock_Ivan.jpg", "./assets/Images/Stolperstein/Weinstock_Ivan/Weinstock_Iwan_PT.jpg",], 
    filters: [Filter.Theresienstadt, Filter.Calvinstrasse, Filter.Weinstock],
  ),

  StolpersteinModel
  (
    name: "Ignatz Wild",
    location: "http://www.google.com/maps/search/?api=1&query=Innere+Brucker+Strasse+6%2CErlangen%2CGermany",
    shortTextDt: sh_Wild_Ignatz_dt,
    shortTextEn: sh_Wild_Ignatz_en, 
    textDt: txt_Wild_Ignatz_dt, 
    textEn: txt_Wild_Ignatz_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Ignatz_Wild.mp3", 
    audioUrlEn: "Audio/Stolperstein/En/Ignatz_Wild.mp3", 
    sources: src_Wild_Ignatz ,
    galleryImages: 
    [
      PictureModel(infoDt:"Innere Brucker Strasse 6", infoEn: "Innere Brucker Strasse 6", source: "Stadtarchiv Erlangen, VIII.4.K.83/24, Josef Keller", path: "./assets/Images/Stolperstein/Wild/Wild_Ignatz/1Wild_I_Innere_Brucker_Strasse_6.jpg"),
      PictureModel(infoDt:"Innere Brucker Strasse 6", infoEn: "Innere Brucker Strasse 6", source: "Stadtarchiv Erlangen, VIII.4.K.125/28, Josef Keller", path: "./assets/Images/Stolperstein/Wild/Wild_Ignatz/2Wild_I_Innere_Brucker_Strasse_6.jpg"),
      PictureModel(infoDt:"Innere Brucker Strasse 6", infoEn: "Innere Brucker Strasse 6", source: "Stadtarchiv Erlangen, VI.A.b.497, Johannes Junge", path: "./assets/Images/Stolperstein/Wild/Wild_Ignatz/3Wild_I_Innere_Brucker_Strasse_6.jpg"),
      PictureModel(infoDt:"Innere Brucker Strasse 6", infoEn: "Innere Brucker Strasse 6", source: "Stadtarchiv Erlangen, VI.A.b.1146, Unbekannt", path: "./assets/Images/Stolperstein/Wild/Wild_Ignatz/4Wild_I_Innere_Brucker_Strasse_6.jpg"),
      PictureModel(infoDt:"Ignatz Wild - Stolperstein", infoEn: "Ignatz Wild - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Wild/Wild_Ignatz/Wild_Ignatz.jpg"),
      PictureModel(infoDt: "Ignatz Wild", infoEn: "Ignatz Wild", source: "Ilse Sponsel, Gedenkbuch der Erlanger Opfer der Shoa, Erlangen 2001", path: "./assets/Images/Stolperstein/Wild/Wild_Ignatz/Wild_Ignatz.jpeg")
    ], 
    profilePics: ["./assets/Images/Stolperstein/Wild/Wild_Ignatz/Wild_Ignatz.jpg", "./assets/Images/Stolperstein/Wild/Wild_Ignatz/Wild_Ignatz.jpeg"],
    filters: [Filter.Izbica, Filter.Innere_Brucker_Strasse, Filter.Wild],
  ),

  StolpersteinModel
  (
    name: "Paula Wild",
    location: "http://www.google.com/maps/search/?api=1&query=Goethestrasse+24%2CErlangen%2CGermany",
    shortTextDt: sh_Wild_Paula_dt,
    shortTextEn: sh_Wild_Paula_en, 
    textDt: txt_Wild_Paula_dt, 
    textEn: txt_Wild_Paula_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Paula_Wild.mp3", 
    audioUrlEn: "Audio/Stolperstein/En/Paula_Wild.mp3", 
    sources: src_Wild_Paula,
    galleryImages: 
    [
      PictureModel(infoDt:"Goethestrasse 24", infoEn: "Goethestrasse 24", source: "Stadtarchiv Erlangen, VI.M.b.307, Unbekannt", path: "./assets/Images/Stolperstein/Wild/Wild_Paula/1Wild_P_Goethestrasse_24.jpg"),
      PictureModel(infoDt:"Paula Wild - Stolperstein", infoEn: "Paula Wild - Stolperstein", source: "Emmy-Noether Gymnasium Erlangen, Tobias Baumgartl", path: "./assets/Images/Stolperstein/Wild/Wild_Paula/Wild_Paula.jpg"),
    ],
    profilePics: ["./assets/Images/Stolperstein/Wild/Wild_Paula/Wild_Paula.jpg"],
    filters: [Filter.Riga, Filter.Goethestrasse, Filter.Wild],
  ),
];