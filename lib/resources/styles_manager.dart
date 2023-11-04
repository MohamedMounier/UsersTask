
import 'package:flutter/material.dart';
import 'fonts_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color){
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
      fontWeight: fontWeight
      ,color: color);
}
TextStyle getRegularTextStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize,
       FontManager.regularFontWeight,
      color);
}
TextStyle getMediumTextStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize,
      FontManager.mediumOldFontWeight,
      color);
}
TextStyle getLightTextStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize,
      FontManager.lightFontWeight,
      color);
}

TextStyle getBoldTextStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize,
      FontManager.boldFontWeight,
      color);
}