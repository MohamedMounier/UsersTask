import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:users_task/presentation/widgets/custom_tab_bar/chips_widget.dart';
import 'package:users_task/presentation/widgets/user_widget.dart';

import '../widgets/empty_widget.dart';
import '../widgets/custom_tab_bar/users_view_row.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({super.key});

  @override
  State<ServicesWidget> createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
  int currentPage=0;
  PageController pageController=PageController(keepPage: false);

  _onPageChange(int value){
    setState(() {
      currentPage=value;

    });
  }
  List<Widget> pages=[
    const UserWidget(),
    const EmptyWidget(),
    const EmptyWidget()

  ];
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ChipsWidget(currentPage: currentPage,onPageChange: (currentPage)=>_onPageChange(currentPage)),
        SizedBox(height: .8.h,),
        UsersViewRow(currentIndex: currentPage),
        SizedBox(height: .8.h,),
        Expanded(
          child: Container(
            child: pages[currentPage]
          ),
        )

      ],
    );
  }
}
