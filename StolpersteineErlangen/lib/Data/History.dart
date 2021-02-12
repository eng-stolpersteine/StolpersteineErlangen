import 'package:StolpersteineErlangen/Data/Texts/LongText/HistoryLongText.dart';
import 'package:StolpersteineErlangen/Data/Texts/Sources/HistorySources.dart';
import 'package:StolpersteineErlangen/Models/HistoryModel.dart';
import 'package:StolpersteineErlangen/Models/PictureModel.dart';

List<HistoryModel> historyModels = 
[
  HistoryModel
  (
    name: "Nationalsozialismus", 
    nameEn: "National Socialism", 
    textDt: txt_NationalsozialismusErlangen_de, 
    textEn: txt_NationalsozialismusErlangen_en, 
    audioUrlDt: "Audio/History/Dt/Nationalsozialismus.mp3", 
    audioUrlEn: "Audio/History/En/Nationalsozialismus.mp3", 
    sources: src_NationalsozialismusErlangen, 
    galleryImages: 
    [
      PictureModel
      (
        infoDt: "Hissung der Hakenkreuzfahne am SPD-Haus, Nürnberger Str. 10, durch die SA, 9. März 1933",
        infoEn: "", 
        source: "Stadtarchiv Erlangen, VI.F.b.258, Unbekannt",
        path: "./assets/Images/History/Nationalsozialismus_In_ER/WÄHREND_Hissung_durch_SA_1933.jpg",
      ),
      
      PictureModel
      (
        infoDt: "Kampftag der SA-Standarte 24, Vorbeimarsch am Schlossplatz,15. Mai 1938",
        infoEn: "", 
        source: "Stadtarchiv Erlangen, VI.F.b.289, Fritz Morgenroth",
        path: "./assets/Images/History/Nationalsozialismus_In_ER/WÄHREND_SA_Marsch_1938.jpg",
      ),
      
      PictureModel
      (
        infoDt: "Die männlichen Mitglieder der Israelitischen Kultusgemeinde Erlangen, vor 30. Dezember 1937",
        infoEn: "", 
        source: "Stadtarchiv Erlangen, VI.Sch.b.15, Unbekannt",
        path: "./assets/Images/History/Nationalsozialismus_In_ER/WÄHREND_Männer_Kultusgemeinde_1937.jpg",
      ),
    ], 
    profilePics: [],
  ),

  HistoryModel
  (
    name: "Reichspogromnacht", 
    nameEn: "Night of Broken Glass", 
    textDt: txt_Reichsprogromnacht_de, 
    textEn: txt_Reichsprogromnacht_en, 
    audioUrlDt: "Audio/History/Dt/Reichsprogromnacht.mp3", 
    audioUrlEn: "Audio/History/En/Reichsprogromnacht.mp3", 
    sources: src_Reichsprogromnacht, 
    galleryImages: [], 
    profilePics: [],
  ),

  HistoryModel
  (
    name: "Israelitischer Friedhof", 
    nameEn: "Israelite Cemetary", 
    textDt: txt_IsraelitischerFriedhof_de, 
    textEn: txt_IsraelitischerFriedhof_en, 
    audioUrlDt: "Audio/History/Dt/Jüdischer_Friedhof.mp3", 
    audioUrlEn: "Audio/History/En/Jüdischer_Friedhof.mp3", 
    sources: src_IsraelitischerFriedhof, 
    galleryImages: 
    [
      PictureModel
      (
        infoDt: "Jüdischer Friedhof - 1948", 
        infoEn: "Jewish cemetary - 1948", 
        source: "Stadtarchiv Erlangen, VI.E.b.428", 
        path: "./assets/Images/History/Jüdischer_Friedhof/Friedhof_1948.jpg",
      )
    ], 
    profilePics: [],
  ),

  HistoryModel
  (
    name: "Juedisches Leben Heute", 
    nameEn: "Jewish Life Now", 
    textDt: txt_JuedischesLebenHeute_de, 
    textEn: txt_JuedischesLebenHeute_en, 
    audioUrlDt: "Audio/History/Dt/Jüdisches_Leben_Nach.mp3", 
    audioUrlEn: "Audio/History/En/Jüdisches_Leben_Nach.mp3", 
    sources: src_JuedischesLebenHeute, 
    galleryImages: [], 
    profilePics: [],
  ),

  HistoryModel
  (
    name: "Juedisches Leben vor NS Zeit", 
    nameEn: "Jewish Life Then", 
    textDt: txt_JuedischesLebenNSZeit_de, 
    textEn: txt_JuedischesLebenNSZeit_en, 
    audioUrlDt: "Audio/History/Dt/Jüdisches_Leben_Vor.mp3", 
    audioUrlEn: "Audio/History/En/Jüdisches_Leben_Vor.mp3", 
    sources: src_JuedischesLebenNSZeit, 
    galleryImages: 
    [
      PictureModel
      (
        infoDt: "Schändung und Zerstörung des Herz-Denkmals auf dem Luitpoldplatz (Hugenottenplatz), 15. September 1933",
        infoEn: "",
        source: "Stadtarchiv Erlangen, VI.N.b.271, Unbekannt",
        path: "./assets/Images/History/Jüdisches_Leben_Vor/VOR_1Zerstörung_Denkmal_1933.jpg",
      ),

      PictureModel
      (
        infoDt: "Schändung und Zerstörung des Herz-Denkmals auf dem Luitpoldplatz (Hugenottenplatz), 15. September 1933",
        infoEn: "",
        source: "Stadtarchiv Erlangen, VI.N.b.271, Unbekannt",
        path: "./assets/Images/History/Jüdisches_Leben_Vor/VOR_2Zerstörung_Denkmal_1933.jpg",
      ),
      
      PictureModel
      (
        infoDt: "Das Nürnberger Tor nach Süden, mit antijüdischem Transparent",
        infoEn: "",
        source: "Stadtarchiv Erlangen, XIII.2.P.8, Unbekannt",
        path: "./assets/Images/History/Jüdisches_Leben_Vor/VOR_Nbg_Tor_1935.jpg",
      ),
    ], 
    profilePics: [],
  ),

  HistoryModel
  (
    name: "Stolpersteine", 
    nameEn: "Stolpersteine", 
    textDt: txt_Stolpersteine_de, 
    textEn: txt_Stolpersteine_en, 
    audioUrlDt: "Audio/History/Dt/Stolpersteine.mp3", 
    audioUrlEn: "Audio/History/En/Stolpersteine.mp3", 
    sources: src_Stolpersteine, 
    galleryImages: [], 
    profilePics: [],
  ),
];