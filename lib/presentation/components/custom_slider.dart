
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:users_task/presentation/widgets/slider_widgets/slider_dots_widget.dart';
import 'package:users_task/resources/assets_manager.dart';

class CustomSliderWidget extends StatefulWidget {
   CustomSliderWidget({Key? key}) : super(key: key);

  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  int currentIndex=0;

  _onPageChange(int value){
    setState(() {
      currentIndex=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: CarouselController(),
          options: CarouselOptions(height: 14.h,onPageChanged: (value,_)=>_onPageChange(value),viewportFraction: 1 ),
          items: [1,2,3].map((i) {
            return Container(
                height: 15.h,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppImages.sliderImage),fit: BoxFit.fill),

                ),
            );
          }).toList(),
        ),
        SizedBox(height: 1.h,),
        CustomSliderDotsWidget(currentPage:currentIndex ,)
      ],
    );
  }
}
