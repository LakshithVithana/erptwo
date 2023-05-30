import 'package:erptwo/core/shared/widgets/custom_elevated_buttons.dart';
import 'package:erptwo/core/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/constants/colors.dart';

class SingleTransactionPage extends StatefulWidget {
  const SingleTransactionPage({super.key});

  @override
  State<SingleTransactionPage> createState() => _SingleTransactionPageState();
}

class _SingleTransactionPageState extends State<SingleTransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.0.h,
        backgroundColor: accountMainColor,
        centerTitle: false,
        title: const CustomText(
          text: "Single Transaction",
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
          color: white,
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: white,
            size: 26.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.forum,
                color: white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 20.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomText(
                        text: "Transaction",
                        fontSize: 36.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(width: 20.0),
                      // const SizedBox(
                      //   width: 100.0,
                      //   child: CustomTextFormField(
                      //       hintText: "Transaction No.", initialValue: "T0001"),
                      // ),
                      CustomText(
                        text: "/",
                        fontSize: 36.0.sp,
                        fontWeight: FontWeight.normal,
                        color: secondaryFontColor,
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: accountSecondaryColor),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 2.0),
                          child: Row(
                            children: [
                              CustomText(
                                text: "T0001",
                                fontSize: 24.0.sp,
                                fontWeight: FontWeight.normal,
                                color: secondaryFontColor,
                              ),
                              const SizedBox(width: 10.0),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  size: 24.0.sp,
                                ),
                                color: accountSecondaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.chevron_left),
                      ),
                      CustomText(
                        text: "1/56",
                        fontSize: 14.0.sp,
                        fontWeight: FontWeight.normal,
                        color: secondaryFontColor,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: PositiveElevatedButton(
                          backgroundColor: accountMainColor,
                          label: "Edit",
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: PositiveElevatedButton(
                          backgroundColor: accountMainColor,
                          label: "Delete",
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Container(
                height: 1.0,
                color: deviderColor,
              ),
              // const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton.icon(
                    icon: const Icon(
                      Icons.print,
                      color: accountMainColor,
                    ),
                    onPressed: () {},
                    label: CustomText(
                      text: "Print",
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.bold,
                      color: accountsColor,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  TextButton.icon(
                    icon: const Icon(
                      Icons.send,
                      color: accountMainColor,
                    ),
                    onPressed: () {},
                    label: CustomText(
                      text: "Send by Email",
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.bold,
                      color: accountsColor,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  TextButton.icon(
                    icon: const Icon(
                      Icons.cancel,
                      color: accountMainColor,
                    ),
                    onPressed: () {},
                    label: CustomText(
                      text: "Cancel",
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.bold,
                      color: accountsColor,
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 10.0),
              Container(
                height: 1.0,
                color: deviderColor,
              ),
              const SizedBox(height: 30.0),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 1.6,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "T0001",
                          fontSize: 36.0.sp,
                          fontWeight: FontWeight.bold,
                          color: secondaryFontColor,
                        ),
                        const SizedBox(height: 25.0),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 3.6,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "Customer Name",
                                          fontSize: 14.0.sp,
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "John Doe",
                                          fontSize: 14.0.sp,
                                          fontWeight: FontWeight.bold,
                                          color: secondaryFontColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5.0),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "Address",
                                          fontSize: 14.0.sp,
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text:
                                              "No.1/2,\n5th Cross Street,\nColombo 07",
                                          fontSize: 14.0.sp,
                                          fontWeight: FontWeight.bold,
                                          color: secondaryFontColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5.0),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "Date",
                                          fontSize: 14.0.sp,
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "11.08.2023",
                                          fontSize: 14.0.sp,
                                          fontWeight: FontWeight.bold,
                                          color: secondaryFontColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5.0),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "Payment Method",
                                          fontSize: 14.0.sp,
                                          fontWeight: FontWeight.bold,
                                          color: black,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text: "Card",
                                          fontSize: 14.0.sp,
                                          fontWeight: FontWeight.bold,
                                          color: secondaryFontColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
