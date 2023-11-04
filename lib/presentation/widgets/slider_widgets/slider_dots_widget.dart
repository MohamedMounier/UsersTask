
import 'package:flutter/material.dart';
import 'package:users_task/resources/app_colors.dart';

class CustomSliderDotsWidget extends StatefulWidget {
   CustomSliderDotsWidget({Key? key, required this.currentPage}) : super(key: key);
   final int currentPage;

  @override
  State<CustomSliderDotsWidget> createState() => _CustomSliderDotsWidgetState();
}

class _CustomSliderDotsWidgetState extends State<CustomSliderDotsWidget> {
  @override
  Widget build(BuildContext context) {

    return Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                ...List.generate(
                   3,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 900),
                          width: widget.currentPage == index ? 20 : 5,
                          height: 6,
                          decoration: BoxDecoration(
                              color: widget.currentPage == index? AppColors.primary:AppColors.greyLightNav,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            );
  }
}
