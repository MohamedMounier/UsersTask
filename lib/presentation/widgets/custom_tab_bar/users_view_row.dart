import 'package:flutter/material.dart';
import 'package:users_task/resources/app_colors.dart';
import 'package:users_task/resources/app_strings.dart';

class UsersViewRow extends StatelessWidget {
  const UsersViewRow({super.key, required this.currentIndex});
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return  Visibility(
      visible: currentIndex==0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(AppStrings.usersView,style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.grayDark),),
          Text(AppStrings.seeAll,style: Theme.of(context).textTheme.bodySmall!.copyWith(decoration: TextDecoration.underline,color: AppColors
              .grayLightText),),
        ],
      ),
      replacement: SizedBox(),
    );
  }
}
