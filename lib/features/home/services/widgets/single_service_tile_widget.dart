import 'package:erptwo/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shared/widgets/custom_text.dart';

class SingleServiceTileWidget extends StatefulWidget {
  const SingleServiceTileWidget({
    super.key,
    this.favoritePage,
    required this.iconName,
    required this.title,
    // required this.subtitle,
    required this.mainColor,
    this.addFavorite,
    this.onTap,
    this.itemList,
    required this.hoverColor,
    required this.isUnlocked,
    // required this.expantionText,
  });
  final bool? favoritePage;
  final String title;
  // final String subtitle;
  final IconData iconName;
  final Color mainColor;
  final Color hoverColor;
  final addFavorite;
  final onTap;
  final List<String>? itemList;
  final bool isUnlocked;

  @override
  State<SingleServiceTileWidget> createState() =>
      _SingleServiceTileWidgetState();
}

class _SingleServiceTileWidgetState extends State<SingleServiceTileWidget> {
  bool isPressed = false;
  late Color bgColor;
  bool isHovered = false;
  // final List _itemList = [];

  @override
  void initState() {
    setState(() {
      bgColor = white;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //       color: Colors.black26, offset: Offset(0.5, 0.5), blurRadius: 8.0)
          // ],
          ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: widget.onTap,
        onHover: (onHover) {
          if (onHover == true) {
            setState(() {
              isHovered = true;
            });
          }
          if (onHover == false) {
            setState(() {
              isHovered = false;
            });
          }
        },
        child: AnimatedContainer(
          alignment: Alignment.center,
          duration: const Duration(milliseconds: 550),
          // reverseDuration: const Duration(milliseconds: 550),
          transform: Matrix4.translationValues(
              isHovered == true ? 0 : 0, isHovered == true ? 0 : 10, 0),
          curve: Curves.fastOutSlowIn,
          width: isHovered == true ? 240.0.w : 220.0.w,
          height: isHovered == true ? 170.0.h : 150.0.h,
          decoration: BoxDecoration(
            color: isHovered == true ? widget.hoverColor : white,
            // border: Border.all(
            //   color: widget.outlineColor,
            //   width: 2.0,
            // ),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.5, 0.5),
                  blurRadius: 8.0)
            ],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedSize(
                  alignment: Alignment.center,
                  duration: const Duration(milliseconds: 250),
                  reverseDuration: const Duration(milliseconds: 250),
                  curve: Curves.fastOutSlowIn,
                  child: Icon(
                    widget.iconName,
                    color: widget.isUnlocked == true
                        ? widget.mainColor
                        : secondaryFontColor,
                    size: isHovered == true ? 70.0.sp : 50.0.sp,
                  ),
                ),
                const SizedBox(height: 10.0),
                AnimatedSize(
                  alignment: Alignment.center,
                  duration: const Duration(milliseconds: 250),
                  reverseDuration: const Duration(milliseconds: 250),
                  curve: Curves.fastOutSlowIn,
                  child: CustomText(
                    textEllipsis: true,
                    text: widget.title,
                    fontSize: isHovered == true ? 20.0.sp : 18.0.sp,
                    fontWeight:
                        isHovered == true ? FontWeight.bold : FontWeight.w500,
                    color: mainColor,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Tooltip(
                    message: widget.isUnlocked == true
                        ? 'Access granted.'
                        : "Need to purchase subscription for access this service.",
                    showDuration: const Duration(seconds: 0),
                    // waitDuration: const Duration(seconds: 1),
                    child: Icon(
                      widget.isUnlocked == true ? Icons.key : Icons.lock,
                      color: accentColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
