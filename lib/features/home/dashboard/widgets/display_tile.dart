import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shared/widgets/custom_text.dart';

class DisplayTile extends StatelessWidget {
  const DisplayTile({
    super.key,
    required this.color,
    required this.mainText,
    required this.subText,
  });
  final Color color;
  final String mainText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0.w,
      height: 80.0.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText(
                text: mainText,
                fontSize: 24.0.sp,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: subText,
                fontSize: 16.0.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
