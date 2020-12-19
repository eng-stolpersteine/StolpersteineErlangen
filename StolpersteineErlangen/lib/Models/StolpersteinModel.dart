import 'package:StolpersteineErlangen/Data/Filters/FilterEnum.dart';
import 'package:StolpersteineErlangen/Models/PictureModel.dart';
import 'package:flutter/material.dart';

class StolpersteinModel
{
  String name;
  List<PictureModel> galleryImages;
  List<String> profilePics;
  String location;
  String shortTextDt;
  String shortTextEn;
  String textDt;
  String textEn;
  String audioUrlDt;
  String audioUrlEn;
  String sources;
  List<Filter> filters;

  StolpersteinModel
  ({
      @required this.name,
      @required this.location,
      @required this.shortTextDt,
      @required this.shortTextEn,
      @required this.textDt,
      @required this.textEn,
      @required this.audioUrlDt,
      @required this.audioUrlEn,
      @required this.sources,
      @required this.galleryImages,
      @required this.profilePics,
      @required this.filters
  });
}