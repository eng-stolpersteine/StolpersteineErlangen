import 'package:StolpersteineErlangen/Data/Texts/LongText/StolpersteinLongText.dart';
import 'package:StolpersteineErlangen/Data/Texts/ShortText/StolpersteinShortText.dart';
import 'package:StolpersteineErlangen/Data/Texts/Sources/StolpersteinSources.dart';
import 'package:StolpersteineErlangen/Models/StolpersteinModel.dart';

List<StolpersteinModel> stolpersteinModels = 
[
  StolpersteinModel
  (
    name: "Amalie Bauer",
    location: "https://www.google.com/maps/search/?api=1&query=Theaterplatz+4%2CErlangen%2CGermany",
    shortTextDt: sh_Bauer_Amalia_dt,
    shortTextEn: sh_Bauer_Amalia_en, 
    textDt: txt_Bauer_Amalia_dt, 
    textEn: txt_Bauer_Amalia_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Familie_Bauer.mp3", 
    audioUrlEn: "", 
    sources: src_Bauer_Amalia, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Bauer_Amalia/1Bauer_A_S_Theaterplatz_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Amalia/2Bauer_A_S_Theaterplatz_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Amalia/3Bauer_A_S_Theaterplatz_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Amalia/4Bauer_A_S_Theaterplatz_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Amalia/Bauer_Amalia.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Bauer_Amalia/Bauer_Amalia.jpg"], 
    filters: ["Other", "Theaterplatz", "Bauer"],
  ),

  StolpersteinModel
  (
    name: "Ernestine Bauer",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+4%2CErlangen%2CGermany",
    shortTextDt: sh_Bauer_Ernestine_dt,
    shortTextEn: sh_Bauer_Ernestine_en, 
    textDt: txt_Bauer_Ernestine_dt, 
    textEn: txt_Bauer_Ernestine_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Familie_Bauer.mp3",
    audioUrlEn: "", 
    sources: src_Bauer_Ernestine, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Bauer_Ernestine/1Bauer_J_E_Hauptstrasse_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Ernestine/2Bauer_J_E_Hauptstrasse_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Ernestine/3Bauer_J_E_Hauptstrasse_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Ernestine/4Bauer_J_E_Hauptstrasse_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Ernestine/Bauer_Ernestine.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Bauer_Ernestine/Bauer_Ernestine.jpg"], 
    filters: ["Other", "Hauptstrasse", "Bauer"],
  ),

  StolpersteinModel
  (
    name: "Josef Bauer",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+4%2CErlangen%2CGermany",
    shortTextDt: sh_Bauer_Josef_dt,
    shortTextEn: sh_Bauer_Josef_en, 
    textDt: txt_Bauer_Josef_dt, 
    textEn: txt_Bauer_Josef_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Familie_Bauer.mp3", 
    audioUrlEn: "", 
    sources: src_Bauer_Josef, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Bauer_Josef/1Bauer_J_E_Hauptstrasse_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Josef/2Bauer_J_E_Hauptstrasse_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Josef/3Bauer_J_E_Hauptstrasse_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Josef/4Bauer_J_E_Hauptstrasse_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Josef/Bauer_Josef.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Bauer_Josef/Bauer_Josef.jpg"], 
    filters: ["Other", "Hauptstrasse", "Bauer"],
  ),

  StolpersteinModel
  (
    name: "Simon Bauer",
    location: "https://www.google.com/maps/search/?api=1&query=Theaterplatz+4%2CErlangen%2CGermany",
    shortTextDt: sh_Bauer_Simon_dt,
    shortTextEn: sh_Bauer_Simon_en, 
    textDt: txt_Bauer_Simon_dt, 
    textEn: txt_Bauer_Simon_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Familie_Bauer.mp3",  
    audioUrlEn: "", 
    sources: src_Bauer_Simon, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Bauer_Simon/1Bauer_A_S_Theaterplatz_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Simon/2Bauer_A_S_Theaterplatz_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Simon/3Bauer_A_S_Theaterplatz_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Simon/4Bauer_A_S_Theaterplatz_4.jpg",
      "./assets/Images/Stolperstein/Bauer_Simon/Bauer_Simon.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Bauer_Simon/Bauer_Simon.jpg"], 
    filters:  ["Other", "Theaterplatz", "Bauer"],
  ),

  StolpersteinModel
  (
    name: "Erich Benesi",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+2%2CErlangen%2CGermany",
    shortTextDt: sh_Benesi_Erich_dt,
    shortTextEn: sh_Benesi_Erich_en, 
    textDt: txt_Benesi_Erich_dt, 
    textEn: txt_Benesi_Erich_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Benesi.mp3", 
    audioUrlEn: "", 
    sources: src_Benesi_Erich, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Benesi_Erich/1Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Erich/2Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Erich/3Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Erich/4Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Erich/5Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Erich/6Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Erich/7Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Erich/Benesi_Erich.jpg",
      "./assets/Images/Stolperstein/Benesi_Erich/Benesi_Erich_PT.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Benesi_Erich/Benesi_Erich.jpg", "./assets/Images/Stolperstein/Benesi_Erich/Benesi_Erich_PT.jpg",], 
    filters: ["Other", "Hauptstrasse", "Benesi"],
  ),

  StolpersteinModel
  (
    name: "Gottliebe Benesi",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+2%2CErlangen%2CGermany",
    shortTextDt: sh_Benesi_Gottliebe_dt,
    shortTextEn: sh_Benesi_Gottliebe_en, 
    textDt: txt_Benesi_Gottliebe_dt, 
    textEn: txt_Benesi_Gottliebe_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Benesi.mp3", 
    audioUrlEn: "", 
    sources: src_Benesi_Gottliebe, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Benesi_Gottliebe/1Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Gottliebe/2Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Gottliebe/3Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Gottliebe/4Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Gottliebe/5Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Gottliebe/6Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Gottliebe/7Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Gottliebe/Benesi_Gottliebe.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Benesi_Gottliebe/Benesi_Gottliebe.jpg"], 
    filters: ["Other", "Hauptstrasse", "Benesi"],
  ),

  StolpersteinModel
  (
    name: "Hannelore Benesi",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+2%2CErlangen%2CGermany",
    shortTextDt: sh_Benesi_Hannelore_dt,
    shortTextEn: sh_Benesi_Hannelore_en, 
    textDt: txt_Benesi_Hannelore_dt, 
    textEn: txt_Benesi_Hannelore_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Benesi.mp3", 
    audioUrlEn: "", 
    sources: src_Benesi_Hannelore, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Benesi_Hannelore/1Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Hannelore/2Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Hannelore/3Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Hannelore/4Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Hannelore/5Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Hannelore/6Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Hannelore/7Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Hannelore/Benesi_Hannelore _PT.jpg",
      "./assets/Images/Stolperstein/Benesi_Hannelore/Benesi_Hannelore.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Benesi_Hannelore/Benesi_Hannelore.jpg", "./assets/Images/Stolperstein/Benesi_Hannelore/Benesi_Hannelore _PT.jpg",], 
    filters: ["Other", "Hauptstrasse", "Benesi"],
  ),

  StolpersteinModel
  (
    name: "Hildegard Benesi",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+2%2CErlangen%2CGermany",
    shortTextDt: sh_Benesi_Hildegard_dt,
    shortTextEn: sh_Benesi_Hildegard_en, 
    textDt: txt_Benesi_Hildegard_dt, 
    textEn: txt_Benesi_Hildegard_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Benesi.mp3", 
    audioUrlEn: "", 
    sources: src_Benesi_Hildegard, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Benesi_Hildegard/1Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Hildegard/2Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Hildegard/3Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Hildegard/4Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Hildegard/5Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Hildegard/6Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Hildegard/7Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Hildegard/Benesi_Hildegard.jpg",
      "./assets/Images/Stolperstein/Benesi_Hildegard/Hildegard Benesi.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Benesi_Hildegard/Benesi_Hildegard.jpg", ], 
    filters: ["Other", "Hauptstrasse", "Benesi"],
  ),

  StolpersteinModel
  (
    name: "Jakob Benesi",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+2%2CErlangen%2CGermany",
    shortTextDt: sh_Benesi_Jakob_dt,
    shortTextEn: sh_Benesi_Jakob_en, 
    textDt: txt_Benesi_Jakob_dt, 
    textEn: txt_Benesi_Jakob_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Benesi.mp3", 
    audioUrlEn: "", 
    sources: src_Benesi_Jakob, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Benesi_Jakob/1Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Jakob/2Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Jakob/3Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Jakob/4Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Jakob/5Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Jakob/6Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Jakob/7Benesi_Hauptstrasse_2.jpg",
      "./assets/Images/Stolperstein/Benesi_Jakob/Benesi_Jakob.jpg",
      "./assets/Images/Stolperstein/Benesi_Jakob/Benesi_Jakob_PT.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Benesi_Jakob/Benesi_Jakob.jpg", "./assets/Images/Stolperstein/Benesi_Jakob/Benesi_Jakob_PT.jpg",], 
    filters: ["Other", "Hauptstrasse", "Benesi"],
  ),

  StolpersteinModel
  (
    name: "Alfred Cohn",
    location: "https://www.google.com/maps/search/?api=1&query=Bayreuther+Strasse+17+A%2CErlangen%2CGermany",
    shortTextDt: sh_Cohn_Alfred_dt,
    shortTextEn: sh_Cohn_Alfred_en, 
    textDt: txt_Cohn_Alfred_dt, 
    textEn: txt_Cohn_Alfred_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Alfred_Cohn.mp3", 
    audioUrlEn: "", 
    sources: src_Cohn_Alfred, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Cohn_Alfred/1Cohn_A_Bayreutherstrasse_17A Kopie 2.jpg",
      "./assets/Images/Stolperstein/Cohn_Alfred/2Cohn_A_Bayreutherstrasse_17A Kopie 2.jpg",
      "./assets/Images/Stolperstein/Cohn_Alfred/3Cohn_A_Bayreutherstrasse_17A Kopie 2.jpg",
      "./assets/Images/Stolperstein/Cohn_Alfred/4Cohn_A_Bayreutherstrasse_17A Kopie 2.jpg",
      "./assets/Images/Stolperstein/Cohn_Alfred/Cohn_Alfred.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Cohn_Alfred/Cohn_Alfred.jpg",], 
    filters: ["Erlangen", "Bayreuther Strasse", "Cohn"],
  ),

  StolpersteinModel
  (
    name: "Rosa Cohn",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+58%2CErlangen%2CGermany",
    shortTextDt: sh_Cohn_Rosa_dt,
    shortTextEn: sh_Cohn_Rosa_en, 
    textDt: txt_Cohn_Rosa_dt, 
    textEn: txt_Cohn_Rosa_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Rosa_Cohn.mp3", 
    audioUrlEn: "", 
    sources: src_Cohn_Rosa, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Cohn_Rosa/1Cohn_R_Hauptstrasse_58 Kopie.jpg",
      "./assets/Images/Stolperstein/Cohn_Rosa/2Cohn_R_Hauptstrasse_58 Kopie.jpg",
      "./assets/Images/Stolperstein/Cohn_Rosa/3Cohn_R_Hauptstrasse_58 Kopie.jpg",
      "./assets/Images/Stolperstein/Cohn_Rosa/Cohn_Rosa.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Cohn_Rosa/Cohn_Rosa.jpg",], 
    filters: ["Other", "Hauptstrasse", "Cohn"],
  ),

  StolpersteinModel
  (
    name: "Adolf Dreifuss",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+83%2CErlangen%2CGermany",
    shortTextDt: sh_Dreifuss_Adolf_dt,
    shortTextEn: sh_Dreifuss_Adolf_en, 
    textDt: txt_Dreifuss_Adolf_dt, 
    textEn: txt_Dreifuss_Adolf_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Adolf_Dreifuß.mp3", 
    audioUrlEn: "", 
    sources: src_Dreifuss_Adolf, 
    galleryImages:  
    [
      "./assets/Images/Stolperstein/Dreifuss_Adolf/Dreifuss_Adolf.jpg",
      "./assets/Images/Stolperstein/Dreifuss_Adolf/Dreifuss_Adolf_PT.jpg",
    ], 
    profilePics:  ["./assets/Images/Stolperstein/Dreifuss_Adolf/Dreifuss_Adolf.jpg", "./assets/Images/Stolperstein/Dreifuss_Adolf/Dreifuss_Adolf_PT.jpg",], 
    filters:  ["Theresienstadt", "Hauptstrasse", "Dreifuss"],
  ),

  StolpersteinModel
  (
    name: "Bertha Fleischhauer",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+83%2CErlangen%2CGermany",
    shortTextDt: sh_Fleischhauer_Bertha_dt,
    shortTextEn: sh_Fleischhauer_Bertha_en, 
    textDt: txt_Fleischhauer_Bertha_dt, 
    textEn: txt_Fleischhauer_Bertha_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Bertha_Fleischhauer.mp3", 
    audioUrlEn: "", 
    sources: src_Fleischhauer_Bertha, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Fleischhauer_Bertha/Fleischhauer_Bertha.jpg",
      "./assets/Images/Stolperstein/Fleischhauer_Bertha/Fleischhauer_Bertha_PT.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Fleischhauer_Bertha/Fleischhauer_Bertha.jpg", "./assets/Images/Stolperstein/Fleischhauer_Bertha/Fleischhauer_Bertha_PT.jpg",], 
    filters: ["Other", "Hauptstrasse", "Fleischhauer"],
  ),

  StolpersteinModel
  (
    name: "Gustav Heyer",
    location: "https://www.google.com/maps/search/?api=1&query=Österreicher+Strasse+12+A%2CErlangen%2CGermany",
    shortTextDt: sh_Heyer_Gustav_dt,
    shortTextEn: sh_Heyer_Gustav_en, 
    textDt: txt_Heyer_Gustav_dt, 
    textEn: txt_Heyer_Gustav_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Gustav_Heyer.mp3", 
    audioUrlEn: "", 
    sources: src_Heyer_Gustav, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Heyer_Gustav/1Heyer_G_Österreicherstrasse_12A.jpg",
      "./assets/Images/Stolperstein/Heyer_Gustav/Heyer_Gustav.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Heyer_Gustav/Heyer_Gustav.jpg",], 
    filters: ["Dachau", "Österreicher Strasse", "Heyer"],
  ),

  StolpersteinModel
  (
    name: "Wilma Katz",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+2%2CErlangen%2CGermany",
    shortTextDt: sh_Katz_Wilma_dt,
    shortTextEn: sh_Katz_Wilma_en, 
    textDt: txt_Katz_Wilma_dt, 
    textEn: txt_Katz_Wilma_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Wilma_Katz.mp3",
    audioUrlEn: "", 
    sources: src_Katz_Wilma, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Katz_Wilma/1Katz_W_Hauptstrasse_2 Kopie.jpg",
      "./assets/Images/Stolperstein/Katz_Wilma/2Katz_W_Hauptstrasse_2 Kopie.jpg",
      "./assets/Images/Stolperstein/Katz_Wilma/3Katz_W_Hauptstrasse_2 Kopie.jpg",
      "./assets/Images/Stolperstein/Katz_Wilma/4Katz_W_Hauptstrasse_2 Kopie.jpg",
      "./assets/Images/Stolperstein/Katz_Wilma/5Katz_W_Hauptstrasse_2 Kopie.jpg",
      "./assets/Images/Stolperstein/Katz_Wilma/6Katz_W_Hauptstrasse_2 Kopie.jpg",
      "./assets/Images/Stolperstein/Katz_Wilma/7Katz_W_Hauptstrasse_2 Kopie.jpg",
      "./assets/Images/Stolperstein/Katz_Wilma/Katz_Wilma.jpg",
      "./assets/Images/Stolperstein/Katz_Wilma/Katz_Wilma_PT.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Katz_Wilma/Katz_Wilma.jpg", "./assets/Images/Stolperstein/Katz_Wilma/Katz_Wilma_PT.jpg",], 
    filters: ["Other", "Hauptstrasse", "Katz"],
  ),

  StolpersteinModel
  (
    name: "Jenny Rotenstein",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+63%2CErlangen%2CGermany",
    shortTextDt: sh_Rotenstein_Jenny_dt,
    shortTextEn: sh_Rotenstein_Jenny_en, 
    textDt: txt_Rotenstein_Jenny_dt, 
    textEn: txt_Rotenstein_Jenny_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Jenny_Rothenstein.mp3",
    audioUrlEn: "", 
    sources: src_Rotenstein_Jenny,
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Rotenstein_Jenny/1Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Jenny/2Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Jenny/3Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Jenny/4Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Jenny/5Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Jenny/Rotenstein_Jenny.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Rotenstein_Jenny/Rotenstein_Jenny.jpg",], 
    filters: ["Other", "Hauptstrasse", "Rotenstein"],
  ),

  StolpersteinModel
  (
    name: "Simon Rotenstein",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+63%2CErlangen%2CGermany",
    shortTextDt: sh_Rotenstein_Simon_dt,
    shortTextEn: sh_Rotenstein_Simon_en, 
    textDt: txt_Rotenstein_Simon_dt, 
    textEn: txt_Rotenstein_Simon_en ,
    audioUrlDt: "Audio/Stolperstein/Dt/Simon_Rothenstein.mp3", 
    audioUrlEn: "", 
    sources: src_Rotenstein_Simon, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Rotenstein_Simon/1Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Simon/2Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Simon/3Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Simon/4Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Simon/5Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Simon/Rotenstein_Simon.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Rotenstein_Simon/Rotenstein_Simon.jpg",],
    filters: ["Other", "Hauptstrasse", "Rotenstein"],
  ),

  StolpersteinModel
  (
    name: "Sophie Rotenstein",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+63%2CErlangen%2CGermany",
    shortTextDt: sh_Rotenstein_Sophie_dt,
    shortTextEn: sh_Rotenstein_Sophie_en, 
    textDt: txt_Rotenstein_Sophie_dt, 
    textEn: txt_Rotenstein_Sophie_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Sophie_Rothenstein.mp3", 
    audioUrlEn: "", 
    sources: src_Rotenstein_Sophie, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Rotenstein_Sophie/1Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Sophie/2Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Sophie/3Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Sophie/4Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Sophie/5Rotenstein_Hauptstrasse_63.jpg",
      "./assets/Images/Stolperstein/Rotenstein_Sophie/Rotenstein_Sophie.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Rotenstein_Sophie/Rotenstein_Sophie.jpg",], 
    filters: ["Other", "Hauptstrasse", "Rotenstein"],
  ),

  StolpersteinModel
  (
    name: "Frieda Uhlfelder",
    location: "https://www.google.com/maps/search/?api=1&query=Bayreuther+Strasse+17+A%2CErlangen%2CGermany",
    shortTextDt: sh_Uhlfelder_Frieda_dt,
    shortTextEn: sh_Uhlfelder_Frieda_en, 
    textDt: txt_Uhlfelder_Frieda_dt, 
    textEn: txt_Uhlfelder_Frieda_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Uhlfelder.mp3", 
    audioUrlEn: "", 
    sources: src_Uhlfelder_Frieda, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Uhlfelder_Frieda/1Uhlfelder_Bayreutherstrasse_17A.jpg",
      "./assets/Images/Stolperstein/Uhlfelder_Frieda/2Uhlfelder_Bayreutherstrasse_17A.jpg",
      "./assets/Images/Stolperstein/Uhlfelder_Frieda/3Uhlfelder_Bayreutherstrasse_17A.jpg",
      "./assets/Images/Stolperstein/Uhlfelder_Frieda/4Uhlfelder_Bayreutherstrasse_17A.jpg",
      "./assets/Images/Stolperstein/Uhlfelder_Frieda/Uhlfelder_Frieda.jpg",
      "./assets/Images/Stolperstein/Uhlfelder_Frieda/Uhlfelder_Frieda_PT.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Uhlfelder_Frieda/Uhlfelder_Frieda.jpg", "./assets/Images/Stolperstein/Uhlfelder_Frieda/Uhlfelder_Frieda_PT.jpg",], 
    filters: ["Other", "Bayreuther Strasse", "Uhlfelder"],
  ),

  StolpersteinModel
  (
    name: "Josef Uhlfelder",
    location: "https://www.google.com/maps/search/?api=1&query=Bayreuther+Strasse+17+A%2CErlangen%2CGermany",
    shortTextDt: sh_Uhlfelder_Josef_dt,
    shortTextEn: sh_Uhlfelder_Josef_en, 
    textDt: txt_Uhlfelder_Josef_dt, 
    textEn: txt_Uhlfelder_Josef_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Uhlfelder.mp3",  
    audioUrlEn: "", 
    sources: src_Uhlfelder_Josef, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Uhlfelder_Josef/1Uhlfelder_Bayreutherstrasse_17A.jpg",
      "./assets/Images/Stolperstein/Uhlfelder_Josef/2Uhlfelder_Bayreutherstrasse_17A.jpg",
      "./assets/Images/Stolperstein/Uhlfelder_Josef/3Uhlfelder_Bayreutherstrasse_17A.jpg",
      "./assets/Images/Stolperstein/Uhlfelder_Josef/4Uhlfelder_Bayreutherstrasse_17A.jpg",
      "./assets/Images/Stolperstein/Uhlfelder_Josef/Uhlfelder_Josef.jpg",
      "./assets/Images/Stolperstein/Uhlfelder_Josef/Uhlfelder_Josef_PT.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Uhlfelder_Josef/Uhlfelder_Josef.jpg", "./assets/Images/Stolperstein/Uhlfelder_Josef/Uhlfelder_Josef_PT.jpg",], 
    filters: ["Other", "Bayreuther Strasse", "Uhlfelder"],
  ),

  StolpersteinModel
  (
    name: "Hildegard Vissing",
    location: "https://www.google.com/maps/search/?api=1&query=Bayreuther+Strasse+17+A%2CErlangen%2CGermany",
    shortTextDt: sh_Vissing_Hildegard_dt,
    shortTextEn: sh_Vissing_Hildegard_en, 
    textDt: txt_Vissing_Hildegard_dt, 
    textEn: txt_Vissing_Hildegard_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Hildegard_Vissing.mp3",  
    audioUrlEn: "", 
    sources: src_Vissing_Hildegard, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Vissing_Hildegard/1Laink-Vissing_Bayreutherstrasse_17A Kopie.jpg",
      "./assets/Images/Stolperstein/Vissing_Hildegard/2Laink-Vissing_Bayreutherstrasse_17A Kopie.jpg",
      "./assets/Images/Stolperstein/Vissing_Hildegard/3Laink-Vissing_Bayreutherstrasse_17A Kopie.jpg",
      "./assets/Images/Stolperstein/Vissing_Hildegard/4Laink-Vissing_Bayreutherstrasse_17A Kopie.jpg",
      "./assets/Images/Stolperstein/Vissing_Hildegard/Vissing_Hildegard.jpg",
      "./assets/Images/Stolperstein/Vissing_Hildegard/Vissing_Hildegard_PT.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Vissing_Hildegard/Vissing_Hildegard.jpg", "./assets/Images/Stolperstein/Vissing_Hildegard/Vissing_Hildegard_PT.jpg",],
    filters: ["Auschwitz", "Bayreuther Strasse", "Vissing"],
  ),

  StolpersteinModel
  (
    name: "Thekla Wassermann",
    location: "https://www.google.com/maps/search/?api=1&query=Einhornstrasse+5%2CErlangen%2CGermany",
    shortTextDt: sh_Wassermann_Thekla_dt,
    shortTextEn: sh_Wassermann_Thekla_en, 
    textDt: txt_Wassermann_Thekla_dt, 
    textEn: txt_Wassermann_Thekla_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Thekla_Wassermann.mp3",  
    audioUrlEn: "", 
    sources: src_Wassermann_Thekla, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Wassermann_Thekla/1Wassermann_T_Einhornstrasse_7.jpg",
      "./assets/Images/Stolperstein/Wassermann_Thekla/Wassermann_Thekla.jpg",
      "./assets/Images/Stolperstein/Wassermann_Thekla/Wassermann_Thekla_PT.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Wassermann_Thekla/Wassermann_Thekla.jpg", "./assets/Images/Stolperstein/Wassermann_Thekla/Wassermann_Thekla_PT.jpg",], 
    filters: ["Other", "Einhornstrasse", "Wassermann"],
  ),

  StolpersteinModel
  (
    name: "Klothilde Weglein",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+58%2CErlangen%2CGermany",
    shortTextDt: sh_Weglein_Klothilde_dt,
    shortTextEn: sh_Weglein_Klothilde_en, 
    textDt: txt_Weglein_Klothilde_dt, 
    textEn: txt_Weglein_Klothilde_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Klothilde_Weglein.mp3",  
    audioUrlEn: "", 
    sources: src_Weglein_Klothilde, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Weglein_Klothilde/1Weglein_Hauptstrasse_58.jpg",
      "./assets/Images/Stolperstein/Weglein_Klothilde/2Weglein_Hauptstrasse_58.jpg",
      "./assets/Images/Stolperstein/Weglein_Klothilde/3Weglein_Hauptstrasse_58.jpg",
      "./assets/Images/Stolperstein/Weglein_Klothilde/Weglein_Klothilde.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Weglein_Klothilde/Weglein_Klothilde.jpg",], 
    filters: ["Theresienstadt", "Hauptstrasse", "Weglein"],
  ),

  StolpersteinModel
  (
    name: "Samuel Weglein",
    location: "https://www.google.com/maps/search/?api=1&query=Hauptstrasse+58%2CErlangen%2CGermany",
    shortTextDt: sh_Weglein_Samuel_dt,
    shortTextEn: sh_Weglein_Samuel_en, 
    textDt: txt_Weglein_Samuel_dt, 
    textEn: txt_Weglein_Samuel_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Samuel_Weglein.mp3", 
    audioUrlEn: "", 
    sources: src_Weglein_Samuel, 
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Weglein_Samuel/1Weglein_Hauptstrasse_58.jpg",
      "./assets/Images/Stolperstein/Weglein_Samuel/2Weglein_Hauptstrasse_58.jpg",
      "./assets/Images/Stolperstein/Weglein_Samuel/3Weglein_Hauptstrasse_58.jpg",
      "./assets/Images/Stolperstein/Weglein_Samuel/Weglein_Samuel.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Weglein_Samuel/Weglein_Samuel.jpg",],
    filters: ["Theresienstadt", "Hauptstrasse", "Weglein"],
  ),

  StolpersteinModel
  (
    name: "Ivan Weinstock",
    location: "https://www.google.com/maps/search/?api=1&query=Calvinstrasse+1%2CErlangen%2CGermany",
    shortTextDt: sh_Weinstock_Ivan_dt,
    shortTextEn: sh_Weinstock_Ivan_en, 
    textDt: txt_Weinstock_Ivan_dt, 
    textEn: txt_Weinstock_Ivan_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Iwan_Weinstock.mp3",
    audioUrlEn: "", 
    sources: src_Weinstock_Ivan,
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Weinstock_Ivan/10Weinstock_Calvinstrasse_1.jpg",
      "./assets/Images/Stolperstein/Weinstock_Ivan/11Weinstock_Calvinstrasse_1.jpg",
      "./assets/Images/Stolperstein/Weinstock_Ivan/1Weinstock_Calvinstrasse_1.jpg",
      "./assets/Images/Stolperstein/Weinstock_Ivan/2Weinstock_Calvinstrasse_1.jpg",
      "./assets/Images/Stolperstein/Weinstock_Ivan/3Weinstock_Calvinstrasse_1.jpg",
      "./assets/Images/Stolperstein/Weinstock_Ivan/4Weinstock_Calvinstrasse_1.jpg",
      "./assets/Images/Stolperstein/Weinstock_Ivan/5Weinstock_Calvinstrasse_1.jpg",
      "./assets/Images/Stolperstein/Weinstock_Ivan/6Weinstock_Calvinstrasse_1.jpg",
      "./assets/Images/Stolperstein/Weinstock_Ivan/7Weinstock_Calvinstrasse_1.jpg",
      "./assets/Images/Stolperstein/Weinstock_Ivan/8Weinstock_Calvinstrasse_1.jpg",
      "./assets/Images/Stolperstein/Weinstock_Ivan/9Weinstock_Calvinstrasse_1.jpg",
      "./assets/Images/Stolperstein/Weinstock_Ivan/Weinstock_Ivan.jpg",
      "./assets/Images/Stolperstein/Weinstock_Ivan/Weinstock_Iwan_PT.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Weinstock_Ivan/Weinstock_Ivan.jpg", "./assets/Images/Stolperstein/Weinstock_Ivan/Weinstock_Iwan_PT.jpg",], 
    filters: ["Other", "Calvinstrasse", "Weinstock"],
  ),

  StolpersteinModel
  (
    name: "Ignatz Wild",
    location: "https://www.google.com/maps/search/?api=1&query=Innere+Brucker+Strasse+6%2CErlangen%2CGermany",
    shortTextDt: sh_Wild_Ignatz_dt,
    shortTextEn: sh_Wild_Ignatz_en, 
    textDt: txt_Wild_Ignatz_dt, 
    textEn: txt_Wild_Ignatz_en, 
    audioUrlDt: "Audio/Stolperstein/Dt/Ignatz_Wild.mp3", 
    audioUrlEn: "", 
    sources: src_Wild_Ignatz ,
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Wild_Ignatz/1Wild_I_Innere_Brucker_Strasse_6.jpg",
      "./assets/Images/Stolperstein/Wild_Ignatz/2Wild_I_Innere_Brucker_Strasse_6.jpg",
      "./assets/Images/Stolperstein/Wild_Ignatz/3Wild_I_Innere_Brucker_Strasse_6.jpg",
      "./assets/Images/Stolperstein/Wild_Ignatz/4Wild_I_Innere_Brucker_Strasse_6.jpg",
      "./assets/Images/Stolperstein/Wild_Ignatz/Wild_Ignatz.jpg",
    ], 
    profilePics: ["./assets/Images/Stolperstein/Wild_Ignatz/Wild_Ignatz.jpg",],
    filters: ["Other", "Innere Brucker Strasse", "Wild"],
  ),

  StolpersteinModel
  (
    name: "Paula Wild",
    location: "https://www.google.com/maps/search/?api=1&query=Goethestrasse+24%2CErlangen%2CGermany",
    shortTextDt: sh_Wild_Paula_dt,
    shortTextEn: sh_Wild_Paula_en, 
    textDt: txt_Wild_Paula_dt, 
    textEn: txt_Wild_Paula_en, 
    audioUrlDt: "", 
    audioUrlEn: "", 
    sources: src_Wild_Paula,
    galleryImages: 
    [
      "./assets/Images/Stolperstein/Wild_Paula/1Wild_P_Goethestrasse_24.jpg",
      "./assets/Images/Stolperstein/Wild_Paula/Wild_Paula.jpg",
    ],
    profilePics: ["./assets/Images/Stolperstein/Wild_Paula/Wild_Paula.jpg",],
    filters: ["Other", "Goethestrasse", "Wild"],
  ),
];