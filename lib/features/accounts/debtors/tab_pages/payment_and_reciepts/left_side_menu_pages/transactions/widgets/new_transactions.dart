import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/constants/colors.dart';
import '../../../../../../../../core/shared/widgets/custom_elevated_buttons.dart';
import '../../../../../../../../core/shared/widgets/custom_text.dart';
import '../../../../../../../../core/shared/widgets/custom_text_form_field.dart';
import '../../../../../../../../core/shared/widgets/drop_down_text_field.dart';

class NewTransaction extends StatefulWidget {
  const NewTransaction({super.key});

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: accountsHoverColor,
      iconColor: accountsColor,
      collapsedIconColor: accountsColor,
      tilePadding: const EdgeInsets.only(left: 8.0),
      title: const CustomText(
        text: "+ New Transaction",
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          CustomTextFormField(
                            hintText: "Account",
                            fillColor: white,
                            showLabel: true,
                            suffix: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.search),
                            ),
                          ),
                          SizedBox(height: 10.0.h),
                          const CustomTextFormField(
                            hintText: "Invoice No.",
                            fillColor: white,
                            showLabel: true,
                          ),
                          SizedBox(height: 10.0.h),
                          const CustomTextFormField(
                            hintText: "Analysis Codes",
                            fillColor: white,
                            showLabel: true,
                          ),
                          SizedBox(height: 10.0.h),
                          CustomTextFormField(
                            hintText: "Date",
                            fillColor: white,
                            showLabel: true,
                            suffix: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.calendar_month),
                            ),
                          ),
                          SizedBox(height: 5.0.h),
                          DropDownTextField(
                            fillColor: white,
                            borderColor: Colors.transparent,
                            width: 700.0.w,
                            hintText: "Period",
                            dropdownItems: const [
                              "",
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DropDownTextField(
                            paddingArround: const EdgeInsets.only(bottom: 5.0),
                            fillColor: white,
                            borderColor: Colors.transparent,
                            width: 700.0.w,
                            hintText: "Type",
                            dropdownItems: const [
                              "",
                              "Cash Payment",
                            ],
                          ),
                          SizedBox(height: 5.0.h),
                          const CustomTextFormField(
                            hintText: "Amount",
                            fillColor: white,
                            showLabel: true,
                          ),
                          SizedBox(height: 10.0.h),
                          const CustomTextFormField(
                            hintText: "AUD",
                            fillColor: white,
                            showLabel: true,
                          ),
                          SizedBox(height: 10.0.h),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const CustomTextFormField(
                            hintText: "Chq/Ref",
                            fillColor: white,
                            showLabel: true,
                          ),
                          SizedBox(height: 10.0.h),
                          const CustomTextFormField(
                            hintText: "Drawer",
                            fillColor: white,
                            showLabel: true,
                          ),
                          SizedBox(height: 10.0.h),
                          const CustomTextFormField(
                            hintText: "Bank A/C",
                            fillColor: white,
                            showLabel: true,
                          ),
                          SizedBox(height: 10.0.h),
                          const CustomTextFormField(
                            hintText: "Branch",
                            fillColor: white,
                            showLabel: true,
                          ),
                          SizedBox(height: 10.0.h),
                          const CustomTextFormField(
                            hintText: "Bank",
                            fillColor: white,
                            showLabel: true,
                          ),
                          SizedBox(height: 10.0.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: PositiveElevatedButton(
                      backgroundColor: accountMainColor,
                      label: "Save",
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: PositiveElevatedButton(
                      backgroundColor: accountMainColor,
                      label: "Cancel",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
