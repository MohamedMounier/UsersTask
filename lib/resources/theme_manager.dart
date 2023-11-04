import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:users_task/resources/app_colors.dart';
import 'fonts_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

class AppThemeManager {

  ThemeData getAppTheme(AppThemeEnum appThemeEnum){
    switch (appThemeEnum){
      case AppThemeEnum.LIGHT:
        return _getLightAppTheme();
      default:
        return _getLightAppTheme();
    }
  }
  ThemeData _getLightAppTheme() {
    return ThemeData(
      // colors
      scaffoldBackgroundColor: AppColors.greyBackGround2,
      // primaryColorLight: AppColors.lightPrimary,
      // primaryColorDark: AppColors.darkPrimary,
      // disabledColor: AppColors.grey1,
      // splashColor: AppColors.lightPrimary,
      // card view theme
      cardTheme: CardTheme(
        color: AppColors.white,
        elevation: AppSize.s4,
        // shadowColor: AppColors.lightGrey
      ),

      //App bar Theme
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.grayDark),
          centerTitle: true,
          color: AppColors.white,
          elevation: 0,
          titleTextStyle: getBoldTextStyle(
              fontSize: FontSize.s20, color: AppColors.grayDark)),
      // Button Theme
      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        // disabledColor: AppColors.grey1,
        buttonColor: AppColors.primary,
        // splashColor: AppColors.lightPrimary
      ),
      //elevated button theme data
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularTextStyle(
                  fontSize: FontSize.s17, color: AppColors.white),
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12.dp)))),
      // text theme
      textTheme: TextTheme(
        displayLarge: getLightTextStyle(
            color: AppColors.grayDark, fontSize: FontSize.s22.dp),
        displayMedium:getRegularTextStyle(
            color: AppColors.grayDark, fontSize: FontSize.s14.dp) ,
        displaySmall: getLightTextStyle(
            color: AppColors.grayLight, fontSize: FontSize.s20.dp),
        headlineMedium: getMediumTextStyle(
            color: AppColors.brightBlack, fontSize: FontSize.s18.dp),
        headlineLarge: getMediumTextStyle(
            color: AppColors.primary, fontSize: FontSize.s16.dp),
        headlineSmall: getLightTextStyle(
            color: AppColors.grayLight, fontSize: FontSize.s14.dp),
        titleMedium: getMediumTextStyle(
            color: AppColors.primary, fontSize: FontSize.s16.dp),
        titleSmall: getMediumTextStyle(
            color: AppColors.grayDark, fontSize: FontSize.s14.dp),
        bodyLarge:
            getBoldTextStyle(color: AppColors.grayDark, fontSize: FontSize.s22.dp),
        bodyMedium: getMediumTextStyle(
            color: AppColors.grayDark, fontSize: FontSize.s16.dp),
        bodySmall: getRegularTextStyle(
            color: AppColors.grayLight, fontSize: FontSize.s14.dp),
      ),
      // input decoration theme
    );
  }
}
enum AppThemeEnum{
  LIGHT,
  DARK
}
