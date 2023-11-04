import 'package:flutter/material.dart';
import 'package:users_task/resources/app_strings.dart';
import 'package:users_task/resources/values_manager.dart';

import '../../../resources/app_colors.dart';

class ChipsWidget extends StatefulWidget {
  const ChipsWidget(
      {super.key, required this.onPageChange, required this.currentPage});

  final Function(int) onPageChange;
  final int currentPage;

  @override
  State<ChipsWidget> createState() => _ChipsWidgetState();
}

class _ChipsWidgetState extends State<ChipsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(AppPading.p8),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.greyLightNav),
            borderRadius: BorderRadius.circular(AppPading.p20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () => widget.onPageChange(0),

              style: ElevatedButton.styleFrom(
                  backgroundColor: widget.currentPage == 0
                      ? AppColors.primary
                      : Colors.grey.shade300),
              child: Text(
                AppStrings.users,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: widget.currentPage == 0
                        ? AppColors.white
                        : AppColors.grayDark),
              ),
            ),
            ElevatedButton(
              onPressed: () => widget.onPageChange(1),

              style: ElevatedButton.styleFrom(
                  backgroundColor: widget.currentPage == 1
                      ? AppColors.primary
                      : Colors.grey.shade300),
              child: Text(AppStrings.services,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: widget.currentPage == 1
                          ? AppColors.white
                          : AppColors.grayDark)),
            ),
            ElevatedButton(
              onPressed: () => widget.onPageChange(2),

              style: ElevatedButton.styleFrom(
                  backgroundColor: widget.currentPage == 2
                      ? AppColors.primary
                      : Colors.grey.shade300),
              child: Text(AppStrings.orders,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: widget.currentPage == 2
                          ? AppColors.white
                          : AppColors.grayDark)),
            ),
          ],
        ));
  }
}
