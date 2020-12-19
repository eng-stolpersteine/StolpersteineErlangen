import 'package:StolpersteineErlangen/Models/PictureModel.dart';
import 'package:flutter/material.dart';

class HistoryModel
{
  String name;
  String nameEn;
  List<PictureModel> galleryImages;
  List<String> profilePics;
  String textDt;
  String textEn;
  String audioUrlDt;
  String audioUrlEn;
  String sources;

  HistoryModel
  ({
      @required this.name,
      @required this.nameEn,
      @required this.textDt,
      @required this.textEn,
      @required this.audioUrlDt,
      @required this.audioUrlEn,
      @required this.sources,
      @required this.galleryImages,
      @required this.profilePics,
  });
}