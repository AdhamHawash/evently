import 'package:evently/onbording/Strings.dart';
import 'package:evently/onbording/assets.dart';
import 'package:evently/onbording/descrptions.dart';
import 'package:flutter/cupertino.dart';

class OnbordingData {
  String imagePath;
  String title;
  String description;

  OnbordingData({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  static List<OnbordingData> onBordingList = [
    OnbordingData(
      imagePath: Assets.onBording1,
      title: Strings.title1,
      description: Descrptions.descrotions1,
    ),
    OnbordingData(
      imagePath: Assets.onBording2,
      title: Strings.title2,
      description: Descrptions.descrotions2,
    ),
    OnbordingData(
      imagePath: Assets.onBording3,
      title: Strings.title3,
      description: Descrptions.descrotions3,
    ),
    OnbordingData(
      imagePath: Assets.onBording4,
      title: Strings.title4,
      description: Descrptions.descrotions4,
    ),
  ];
}
