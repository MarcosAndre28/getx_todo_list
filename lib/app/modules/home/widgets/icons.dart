import 'package:flutter/material.dart';

import '../../../core/values/colors.dart';
import '../../../core/values/icons.dart';

List<Icon> getIcons() {
  return  [
    Icon(IconData(IconsApp.personIcon, fontFamily: 'MaterialIcons'),color: ColorsApp.purple,),
    Icon(IconData(IconsApp.workIcon, fontFamily: 'MaterialIcons'),color: ColorsApp.pink,),
    Icon(IconData(IconsApp.movieIcon, fontFamily: 'MaterialIcons'),color: ColorsApp.green,),
    Icon(IconData(IconsApp.sportIcon, fontFamily: 'MaterialIcons'),color: ColorsApp.yellow,),
    Icon(IconData(IconsApp.travelIcon, fontFamily: 'MaterialIcons'),color: ColorsApp.deepPink,),
    Icon(IconData(IconsApp.shopIcon, fontFamily: 'MaterialIcons'),color: ColorsApp.lightBlue,)
  ];
}