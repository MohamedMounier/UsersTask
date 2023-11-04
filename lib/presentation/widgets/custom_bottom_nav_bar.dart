import 'package:flutter/material.dart';
import 'package:users_task/resources/app_colors.dart';
import 'package:users_task/resources/app_strings.dart';

class CustomButtomNavBar extends StatefulWidget {
  const CustomButtomNavBar({super.key});

  @override
  State<CustomButtomNavBar> createState() => _CustomButtomNavBarState();
}

class _CustomButtomNavBarState extends State<CustomButtomNavBar> {
  int currentIndex = 0;

  _onTap(int v) {
    setState(() {
      currentIndex = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: AppColors.greyLightNav,
      selectedItemColor: AppColors.primary,
      backgroundColor: AppColors.white,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedLabelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.primary),
      unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
      items: const [
         BottomNavigationBarItem(
            label: AppStrings.home,

            icon: Icon(Icons.home_outlined)),
         BottomNavigationBarItem(
            label:  AppStrings.assets,
            icon: Icon(Icons.dashboard_customize_outlined,)),
         BottomNavigationBarItem(
            label:  AppStrings.support,
            icon: Icon(Icons.support_agent_outlined)),
         BottomNavigationBarItem(
            label: AppStrings.profile,
            icon: Icon(Icons.person_outline)),
      ],
      currentIndex: currentIndex,
      onTap: (value) => _onTap(value),
    );
  }
}
