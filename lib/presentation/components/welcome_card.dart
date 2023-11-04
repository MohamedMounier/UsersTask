import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:users_task/resources/app_strings.dart';
import 'package:users_task/resources/assets_manager.dart';
import 'package:users_task/resources/size_config.dart';
import 'package:users_task/resources/values_manager.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
         children: [
             Image.asset(AppImages.frameImage),
            Padding(
             padding: const EdgeInsets.symmetric(horizontal:AppMargin.m8 ),
             child: Text("Hey,Ahmed",style: Theme.of(context).textTheme.bodyMedium,),
           ),
           Image.asset(AppImages.handsImage),
         ],
            ),
        SizedBox(height:2.h,),
        Text(AppStrings.multiServicesTitle,
        style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: 5),
        Text(AppStrings.multiServicesSubTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
