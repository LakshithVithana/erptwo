import 'package:erptwo/core/shared/widgets/custom_elevated_buttons.dart';
import 'package:erptwo/core/shared/widgets/custom_text.dart';
import 'package:erptwo/core/shared/widgets/custom_text_form_field.dart';
import 'package:erptwo/core/shared/widgets/drop_down_text_field.dart';
import 'package:erptwo/features/accounts/debtors/tab_pages/payment_and_reciepts/left_side_menu_pages/transactions/single_transaction/single_transaction_page.dart';
import 'package:erptwo/features/accounts/debtors/tab_pages/payment_and_reciepts/left_side_menu_pages/transactions/widgets/new_transactions.dart';
import 'package:erptwo/features/accounts/debtors/tab_pages/payment_and_reciepts/left_side_menu_pages/transactions/widgets/single_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/colors.dart';

class TransactionsLeftSideMenuPage extends StatefulWidget {
  const TransactionsLeftSideMenuPage({super.key});

  @override
  State<TransactionsLeftSideMenuPage> createState() =>
      _TransactionsLeftSideMenuPageState();
}

class _TransactionsLeftSideMenuPageState
    extends State<TransactionsLeftSideMenuPage> {
  GlobalKey stickyKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                      text: "Transactions",
                      fontSize: 36.0.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(width: 10.0),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Container(
              height: 1.0,
              color: deviderColor,
            ),
            const NewTransaction(),
            Container(
              height: 1.0,
              color: deviderColor,
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    DropDownTextField(
                      fillColor: accountsHoverColor,
                      borderColor: accountMainColor,
                      width: 270.0.w,
                      hintText: "View Criteria",
                      dropdownItems: const [
                        "",
                        "Only Unallocated Transactions",
                        "Include Current Allocations",
                        "Include All Allocations",
                      ],
                    ),
                    const SizedBox(width: 10.0),
                    DropDownTextField(
                      fillColor: accountsHoverColor,
                      borderColor: accountMainColor,
                      width: 200.0.w,
                      hintText: "Allocation Age",
                      dropdownItems: const [
                        "",
                      ],
                    ),
                    const SizedBox(width: 10.0),
                    SizedBox(
                      width: 200.0.w,
                      child: const CustomTextFormField(
                        showLabel: true,
                        hintText: "Adjustment",
                        fillColor: accountsHoverColor,
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    SizedBox(
                      width: 200.0.w,
                      child: const CustomTextFormField(
                        showLabel: true,
                        hintText: "Part Allocate(%)",
                        fillColor: accountsHoverColor,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    PositiveElevatedButton(
                      label: "Find",
                      onPressed: () {},
                      backgroundColor: accountMainColor,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            // Container(
            //   height: 1.0,
            //   color: deviderColor,
            // ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                key: stickyKey,
                height: MediaQuery.of(context).size.height / 1.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TransactionTableSingleRow(
                          width: MediaQuery.of(context).size.width,
                          onTap: null,
                          isBold: true,
                          columnOneText: "Select",
                          columnTwoText: "Trans. No.",
                          columnThreeText: "SO No.",
                          columnFourText: "Date",
                          columnFiveText: "Transaction",
                          columnSixText: "Branch",
                          columnSevenText: "Inv. No",
                          columnEightText: "Ref 1",
                          columnNineText: "Ref 2",
                          columnTenText: "Amount",
                          columnElevenText: "To Alloc.",
                          columnTwelveText: "AI",
                          columnThirteenText: "PP Disc",
                          columnFourteenText: "PP Disc Am.",
                          columnFifteenText: "Receipt Ar.",
                          columnSixteenText: "Tax Tot.",
                        ),
                        TransactionTableSingleRow(
                          width: MediaQuery.of(context).size.width,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SingleTransactionPage()));
                          },
                          isBold: false,
                          columnOneText: "",
                          columnTwoText: "1",
                          columnThreeText: "1",
                          columnFourText: "12.12.23",
                          columnFiveText: "Abc",
                          columnSixText: "Colombo",
                          columnSevenText: "00001",
                          columnEightText: "John",
                          columnNineText: "Doe",
                          columnTenText: "12,300",
                          columnElevenText: "Yes",
                          columnTwelveText: "Abc",
                          columnThirteenText: "Yes",
                          columnFourteenText: "200",
                          columnFifteenText: "1234",
                          columnSixteenText: "100",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
