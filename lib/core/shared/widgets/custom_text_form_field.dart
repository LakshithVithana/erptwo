import 'package:erptwo/core/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    Key? key,
    this.controller,
    this.validator,
    this.initialValue,
    this.onChanged,
    this.inputFormatters,
    this.keyboardType,
    this.secure,
    this.readOnly,
    @required this.hintText,
    this.enabled,
    this.prefix,
    this.suffix,
    required this.fillColor,
    required this.showLabel,
    this.borderWidth,
    this.fontSize,
    this.height,
  }) : super(key: key);
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? initialValue;
  final Function(String)? onChanged;
  final inputFormatters;
  final keyboardType;
  final bool? secure;
  final bool? readOnly;
  final String? hintText;
  final bool? enabled;
  final Widget? prefix;
  final Widget? suffix;
  final Color fillColor;
  final bool showLabel;
  final double? borderWidth;
  final double? fontSize;
  final double? height;

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.height ?? 30.0,
          child: TextFormField(
            enabled: widget.enabled,
            style: TextStyle(
              color: secondaryColor,
              fontSize: widget.fontSize ?? 16.0.w,
            ),
            decoration: InputDecoration(
              label: widget.showLabel == true
                  ? CustomText(text: widget.hintText!, fontSize: 14.0.sp)
                  : null,
              prefixIcon: widget.prefix,
              suffixIcon: widget.suffix,
              hintText: widget.hintText,
              hintStyle: const TextStyle(color: secondaryFontColor),
              isDense: true,
              contentPadding: const EdgeInsets.all(10.0),
              fillColor: widget.fillColor,
              filled: true,
              labelStyle: const TextStyle(color: secondaryFontColor),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: widget.borderWidth != null
                        ? Colors.black
                        : Colors.transparent,
                    width: widget.borderWidth ?? 2.0),
                borderRadius: BorderRadius.circular(2.0),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.transparent, width: 2.0),
                borderRadius: BorderRadius.circular(2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: widget.borderWidth != null
                        ? Colors.black
                        : Colors.transparent,
                    width: widget.borderWidth ?? 2.0),
                borderRadius: BorderRadius.circular(2.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.redAccent, width: 2.0),
                borderRadius: BorderRadius.circular(2.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.redAccent, width: 2.0),
                borderRadius: BorderRadius.circular(2.0),
              ),
            ),
            validator: widget.validator,
            controller: widget.controller,
            initialValue: widget.initialValue,
            onChanged: widget.onChanged,
            inputFormatters: widget.inputFormatters,
            obscureText: widget.secure == null ? false : widget.secure!,
            readOnly: widget.readOnly == null ? false : widget.readOnly!,
            keyboardType: widget.keyboardType,
          ),
        ),
      ],
    );
  }
}
