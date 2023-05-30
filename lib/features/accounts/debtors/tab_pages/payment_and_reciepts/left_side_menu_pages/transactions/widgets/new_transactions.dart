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
      backgroundColor: accountsHoverColor.withOpacity(0.2),
      iconColor: accountsColor,
      collapsedIconColor: accountsColor,
      tilePadding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
      title: const Row(
        children: [
          Icon(Icons.add),
          CustomText(
            text: "New Payment",
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ],
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
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 9,
                                child: CustomTextFormField(
                                  borderWidth: 1.0,
                                  fontSize: 12.0,
                                  hintText: "Account",
                                  fillColor: Colors.grey.withOpacity(0.3),
                                  showLabel: true,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: InkWell(
                                  onTap: () {},
                                  child: const Icon(Icons.search),
                                ),
                                // IconButton(
                                //   onPressed: () {},
                                //   icon: const Icon(Icons.search),
                                // ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.0.h),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 9,
                                child: CustomTextFormField(
                                  borderWidth: 1.0,
                                  fontSize: 12.0,
                                  hintText: "Date",
                                  fillColor: Colors.grey.withOpacity(0.3),
                                  showLabel: true,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: InkWell(
                                    onTap: () {},
                                    child: const Icon(Icons.calendar_month)),
                                // IconButton(
                                //   onPressed: () {},
                                //   icon: const Icon(Icons.calendar_month),
                                // ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.0.h),
                          CustomTextFormField(
                            borderWidth: 1.0,
                            fontSize: 12.0,
                            hintText: "Invoice No.",
                            fillColor: Colors.grey.withOpacity(0.3),
                            showLabel: true,
                          ),
                          SizedBox(height: 5.0.h),
                          CustomTextFormField(
                            borderWidth: 1.0,
                            fontSize: 12.0,
                            hintText: "Analysis Codes",
                            fillColor: Colors.grey.withOpacity(0.3),
                            showLabel: true,
                          ),
                          // SizedBox(height: 5.0.h),

                          // SizedBox(height: 5.0.h),
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
                            fillColor: Colors.grey.withOpacity(0.3),
                            borderColor: Colors.transparent,
                            width: 700.0.w,
                            hintText: "Type",
                            dropdownItems: const [
                              "",
                              "Cash Payment",
                            ],
                          ),
                          // SizedBox(height: 5.0.h),
                          CustomTextFormField(
                            borderWidth: 1.0,
                            fontSize: 12.0,
                            hintText: "Amount",
                            fillColor: Colors.grey.withOpacity(0.3),
                            showLabel: true,
                          ),
                          SizedBox(height: 5.0.h),
                          CustomTextFormField(
                            borderWidth: 1.0,
                            fontSize: 12.0,
                            hintText: "AUD",
                            fillColor: Colors.grey.withOpacity(0.3),
                            showLabel: true,
                          ),
                          // SizedBox(height: 5.0.h),
                          DropDownTextField(
                            fillColor: Colors.grey.withOpacity(0.3),
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
                          CustomTextFormField(
                            borderWidth: 1.0,
                            fontSize: 12.0,
                            hintText: "Chq/Ref",
                            fillColor: Colors.grey.withOpacity(0.3),
                            showLabel: true,
                          ),
                          SizedBox(height: 5.0.h),
                          CustomTextFormField(
                            borderWidth: 1.0,
                            fontSize: 12.0,
                            hintText: "Drawer",
                            fillColor: Colors.grey.withOpacity(0.3),
                            showLabel: true,
                          ),
                          SizedBox(height: 5.0.h),
                          CustomTextFormField(
                            borderWidth: 1.0,
                            fontSize: 12.0,
                            hintText: "Bank A/C",
                            fillColor: Colors.grey.withOpacity(0.3),
                            showLabel: true,
                          ),
                          SizedBox(height: 5.0.h),
                          CustomTextFormField(
                            borderWidth: 1.0,
                            fontSize: 12.0,
                            hintText: "Branch",
                            fillColor: Colors.grey.withOpacity(0.3),
                            showLabel: true,
                          ),
                          SizedBox(height: 5.0.h),
                          CustomTextFormField(
                            borderWidth: 1.0,
                            fontSize: 12.0,
                            hintText: "Bank",
                            fillColor: Colors.grey.withOpacity(0.3),
                            showLabel: true,
                          ),
                          SizedBox(height: 5.0.h),
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
                          CustomTextFormField(
                            borderWidth: 1.0,
                            fontSize: 12.0,
                            hintText: "Age",
                            fillColor: Colors.grey.withOpacity(0.3),
                            showLabel: true,
                          ),
                          SizedBox(height: 5.0.h),
                          Container(
                            width: 300.0.w,
                            height: 120.0 + 15.0.h,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 4.0),
                              child: Column(
                                children: [
                                  CustomText(
                                    text: "Aged Balances",
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  //  SizedBox(height: 2.0),
                                  Container(
                                    height: 1.0,
                                    color: white,
                                  ),
                                  //  SizedBox(height: 2.0),
                                  const Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "Current:",
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "0.00",
                                          fontSize: 13.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "1 month:",
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "0.00",
                                          fontSize: 13.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "2 month:",
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "0.00",
                                          fontSize: 13.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "3+ month:",
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "0.00",
                                          fontSize: 13.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  //  SizedBox(height: 5.0),
                                  const Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "Balance:",
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "0.00",
                                          fontSize: 13.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 2.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 125.0.w,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 0.0),
                                  child: PositiveElevatedButton(
                                    backgroundColor: accountMainColor,
                                    label: "Save",
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 125.0.w,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 0.0),
                                  child: PositiveElevatedButton(
                                    backgroundColor: accountMainColor,
                                    label: "Cancel",
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(right: 20.0),
              //       child: PositiveElevatedButton(
              //         backgroundColor: accountMainColor,
              //         label: "Save",
              //         onPressed: () {},
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(right: 16.0),
              //       child: PositiveElevatedButton(
              //         backgroundColor: accountMainColor,
              //         label: "Cancel",
              //         onPressed: () {},
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
