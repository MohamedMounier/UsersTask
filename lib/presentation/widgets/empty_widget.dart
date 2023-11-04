import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:users_task/resources/assets_manager.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 17.h,
            margin: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(AppImages.emptyImage))
            ),
          ),
           SizedBox(height: .05.h,),
          Text("No Orders Found",style: Theme.of(context).textTheme.bodyLarge,),
          Text("you can place your needed orders to let serve you.",style: Theme.of(context).textTheme.displaySmall,maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center),
           SizedBox(height:  .05.h,),
        ],
      ),
    );
  }
}
