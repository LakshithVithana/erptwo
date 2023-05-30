import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/shared/widgets/custom_text.dart';

class SingleCell extends StatefulWidget {
  const SingleCell(
      {super.key,
      required this.cellColor,
      required this.text,
      this.fontWeight});
  final Color cellColor;
  final String text;
  final FontWeight? fontWeight;

  @override
  State<SingleCell> createState() => _SingleCellState();
}

class _SingleCellState extends State<SingleCell> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: widget.cellColor,
        height: 30.0.h,
        child: Center(
          child: CustomText(
            text: widget.text,
            fontSize: 12.0.sp,
            fontWeight: widget.fontWeight,
          ),
        ),
      ),
    );
  }
}
