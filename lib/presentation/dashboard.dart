import 'package:flutter/material.dart';
import 'package:users_task/presentation/components/welcome_card.dart';
import 'package:users_task/resources/app_strings.dart';
import 'package:users_task/resources/values_manager.dart';

import 'widgets/custom_bottom_nav_bar.dart';
import 'components/services_widget.dart';
import 'components/custom_slider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: CustomButtomNavBar(),
      appBar:  AppBar(leading: IconButton(onPressed: (){}, icon:const Icon(Icons.menu)),title: Text(AppStrings.home),),
      body:Padding(padding: EdgeInsets.symmetric(horizontal: AppMargin.m20,
      ),
      child: Column(
        children: [
          const SizedBox(height:AppMargin.m16 ),
          const WelcomeCard(),
          const SizedBox(height:AppMargin.m16 ),
          CustomSliderWidget(),
          const SizedBox(height:AppMargin.m16 ),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ServicesWidget(),
          )),

        ],
      ),
      )
    );
  }
}
