import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

/// Positive custom elevated button
class PositiveElevatedButton extends StatelessWidget {
  const PositiveElevatedButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.isLoading,
    this.height,
    this.borderRadius,
  }) : super(key: key);

  final String? label;
  final onPressed;
  final Color? backgroundColor;
  final bool? isLoading;
  final double? height;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          // side: BorderSide(color: Color(0xFF2B1722), width: 2.0),
          borderRadius: borderRadius != null
              ? borderRadius!
              : const BorderRadius.all(Radius.circular(2.0)),
        ),
      ),
      child: SizedBox(
        // width: screensize.width * 0.9,
        height: height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
          child: Center(
            child: isLoading == null || isLoading == false
                ? Text(
                    label!,
                    style: TextStyle(
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.bold,
                      color: white,
                    ),
                  )
                : const Padding(
                    padding: EdgeInsets.all(0.0),
                    child: SizedBox(
                      height: 22.0,
                      width: 22.0,
                      child: CircularProgressIndicator(color: accentColor),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

/// Positive half custom elevated button
class PositiveHalfElevatedButton extends StatelessWidget {
  const PositiveHalfElevatedButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  //define properties
  final String? label;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size; // getting screen size
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: mainColor, width: 1.0),
          borderRadius:
              BorderRadius.all(Radius.circular(screensize.width * 0.01)),
        ),
      ),
      child: SizedBox(
        width: screensize.width * 0.2,
        height: screensize.height * 0.04,
        child: Center(
          child: Text(
            label!,
            style: TextStyle(
              fontSize: screensize.width * 0.04,
              fontWeight: FontWeight.normal,
              color: white,
            ),
          ),
        ),
      ),
    );
  }
}

/// Negative custom elevated button
class NegativeElevatedButton extends StatelessWidget {
  const NegativeElevatedButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  //define properties
  final String? label;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size; // getting screen size
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: mainColor, width: 3.0),
          borderRadius:
              BorderRadius.all(Radius.circular(screensize.width * 0.03)),
        ),
      ),
      child: SizedBox(
        width: screensize.width * 0.9,
        height: screensize.height * 0.07,
        child: Center(
          child: Text(
            label!,
            style: TextStyle(
              fontSize: screensize.width * 0.06,
              color: mainColor,
            ),
          ),
        ),
      ),
    );
  }
}

/// Negative half custom elevated button
class NegativeHalfElevatedButton extends StatelessWidget {
  const NegativeHalfElevatedButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  //define properties
  final String? label;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size; // getting screen size
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: mainColor, width: 1.0),
          borderRadius:
              BorderRadius.all(Radius.circular(screensize.width * 0.01)),
        ),
      ),
      child: SizedBox(
        width: screensize.width * 0.2,
        height: screensize.height * 0.04,
        child: Center(
          child: Text(
            label!,
            style: TextStyle(
              fontSize: screensize.width * 0.04,
              color: mainColor,
            ),
          ),
        ),
      ),
    );
  }
}

/// Special custom elevated button
class SpecialElevatedButton extends StatelessWidget {
  const SpecialElevatedButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  //define properties
  final String? label;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size; // getting screen size
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        // backgroundColor: accentColor,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(screensize.width * 0.01)),
        ),
      ),
      child: SizedBox(
        width: screensize.width * 0.9,
        height: screensize.height * 0.07,
        child: Center(
          child: Text(
            label!,
            style: TextStyle(
              fontSize: screensize.width * 0.06,
              color: white,
            ),
          ),
        ),
      ),
    );
  }
}
