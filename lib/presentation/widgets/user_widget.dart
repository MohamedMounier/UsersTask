import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:users_task/resources/app_colors.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: ()async{
      },
      child: Builder(
        builder: (context) {
          return ListView.builder(itemBuilder: (context,index){
            return Padding(
              padding:  EdgeInsets.symmetric(vertical: .5.h),
              child: ListTile(
                leading: Text("1"),
                title: Text("Mohamed Mounier",style: Theme.of(context).textTheme.displayMedium,),
                trailing: Icon(Icons.arrow_forward_rounded,color: AppColors.grayLightText),
              ),
            );
          },  itemCount: 5);
        }
      ),
    );
  }
}
