import 'package:StolpersteineErlangen/Data/Texts/LongText/HistoryLongText.dart';
import 'package:StolpersteineErlangen/Data/Texts/Sources/HistorySources.dart';
import 'package:StolpersteineErlangen/Models/HistoryModel.dart';

List<HistoryModel> historyModels = 
[
  HistoryModel
  (
    name: "Nationalsozialismus", 
    nameEn: "Nationalsotialism", 
    textDt: txt_NationalsozialismusErlangen_de, 
    textEn: txt_NationalsozialismusErlangen_en, 
    audioUrlDt: "", 
    audioUrlEn: "", 
    sources: src_NationalsozialismusErlangen, 
    galleryImages: 
    [
      "./assets/Images/History/Nationalsozialismus_In_ER/WÄHREND_Hissung_durch_SA_1933.jpg",
      "./assets/Images/History/Nationalsozialismus_In_ER/WÄHREND_Männer_Kultusgemeinde_1937.jpg",
      "./assets/Images/History/Nationalsozialismus_In_ER/WÄHREND_SA_Marsch_1938.jpg",
    ], 
    profilePics: [],
  ),

  HistoryModel
  (
    name: "Reichsprogromnacht", 
    nameEn: "Night of Broken Glass", 
    textDt: txt_Reichsprogromnacht_de, 
    textEn: txt_Reichsprogromnacht_en, 
    audioUrlDt: "", 
    audioUrlEn: "", 
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
    audioUrlDt: "", 
    audioUrlEn: "", 
    sources: src_IsraelitischerFriedhof, 
    galleryImages: ["./assets/Images/History/Jüdischer_Friedhof/Friedhof_1948.jpg",], 
    profilePics: [],
  ),

  HistoryModel
  (
    name: "Juedisches Leben Heute", 
    nameEn: "Jewish Life Now", 
    textDt: txt_JuedischesLebenHeute_de, 
    textEn: txt_JuedischesLebenHeute_en, 
    audioUrlDt: "", 
    audioUrlEn: "", 
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
    audioUrlDt: "", 
    audioUrlEn: "", 
    sources: src_JuedischesLebenNSZeit, 
    galleryImages: 
    [
      "./assets/Images/History/Jüdisches_Leben_Vor/VOR_1Zerstörung_Denkmal_1933.jpg",
      "./assets/Images/History/Jüdisches_Leben_Vor/VOR_2Zerstörung_Denkmal_1933.jpg",
      "./assets/Images/History/Jüdisches_Leben_Vor/VOR_Nbg_Tor_1935.jpg",
    ], 
    profilePics: [],
  ),

  HistoryModel
  (
    name: "Stolpersteine", 
    nameEn: "Stolpersteine", 
    textDt: txt_Stolpersteine_de, 
    textEn: txt_Stolpersteine_en, 
    audioUrlDt: "", 
    audioUrlEn: "", 
    sources: src_Stolpersteine, 
    galleryImages: [], 
    profilePics: [],
  ),

  HistoryModel
  (
    name: "Danke!", 
    nameEn: "Thanks!", 
    textDt: txt_Danke_de, 
    textEn: txt_Danke_en, 
    audioUrlDt: "", 
    audioUrlEn: "", 
    sources: src_Danke, 
    galleryImages: [], 
    profilePics: [],
  ),
];