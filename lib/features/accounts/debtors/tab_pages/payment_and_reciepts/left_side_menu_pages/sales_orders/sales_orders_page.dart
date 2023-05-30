import 'package:erptwo/core/shared/widgets/custom_text.dart';
import 'package:erptwo/features/accounts/debtors/tab_pages/payment_and_reciepts/left_side_menu_pages/sales_orders/widgets/single_row.dart';
import 'package:erptwo/features/accounts/debtors/tab_pages/payment_and_reciepts/left_side_menu_pages/transactions/single_transaction/single_transaction_page.dart';
import 'package:erptwo/features/accounts/debtors/tab_pages/payment_and_reciepts/left_side_menu_pages/transactions/widgets/new_transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/colors.dart';

class SalesOrdersLeftSideMenuPage extends StatefulWidget {
  const SalesOrdersLeftSideMenuPage({super.key});

  @override
  State<SalesOrdersLeftSideMenuPage> createState() =>
      _SalesOrdersLeftSideMenuPageState();
}

class _SalesOrdersLeftSideMenuPageState
    extends State<SalesOrdersLeftSideMenuPage> {
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
                      text: "Sales Orders",
                      fontSize: 24.0.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(width: 10.0),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Container(
              height: 1.0,
              color: deviderColor,
            ),
            const NewTransaction(),
            Container(
              height: 1.0,
              color: deviderColor,
            ),
            // const SizedBox(height: 5.0),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Row(
            //       children: [
            //         DropDownTextField(
            //           fillColor: accountsHoverColor,
            //           borderColor: accountMainColor,
            //           width: 220.0.w,
            //           hintText: "View Criteria",
            //           dropdownItems: const [
            //             "",
            //             "Only Unallocated Transactions",
            //             "Include Current Allocations",
            //             "Include All Allocations",
            //           ],
            //         ),
            //         const SizedBox(width: 10.0),
            //         DropDownTextField(
            //           fillColor: accountsHoverColor,
            //           borderColor: accountMainColor,
            //           width: 170.0.w,
            //           hintText: "Allocation Age",
            //           dropdownItems: const [
            //             "",
            //           ],
            //         ),
            //         const SizedBox(width: 10.0),
            //         SizedBox(
            //           width: 150.0.w,
            //           child: CustomTextFormField(
            //             borderWidth: 1.0,
            //             fontSize: 12.0.sp,
            //             showLabel: true,
            //             hintText: "Adjustment",
            //             fillColor: accountsHoverColor,
            //           ),
            //         ),
            //         const SizedBox(width: 10.0),
            //         SizedBox(
            //           width: 150.0.w,
            //           child: CustomTextFormField(
            //             borderWidth: 1.0,
            //             fontSize: 12.0.sp,
            //             showLabel: true,
            //             hintText: "Part Allocate(%)",
            //             fillColor: accountsHoverColor,
            //           ),
            //         ),
            //       ],
            //     ),
            //     Row(
            //       children: [
            //         PositiveElevatedButton(
            //           label: "Find",
            //           onPressed: () {},
            //           backgroundColor: accountMainColor,
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 5.0),
            // Container(
            //   height: 1.0,
            //   color: deviderColor,
            // ),
            const SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                key: stickyKey,
                height: MediaQuery.of(context).size.height / 1.5,
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
                        SalesOrderTableSingleRow(
                          width: MediaQuery.of(context).size.width,
                          onTap: null,
                          isBold: true,
                          columnOneText: "Select",
                          columnTwoText: "Oder No.",
                          columnThreeText: "Cust O/N",
                          columnFourText: "Order Date",
                          columnFiveText: "Due Date",
                          columnSixText: "Ref",
                          columnSevenText: "Value Inc tax",
                          columnEightText: "Deposits",
                          columnNineText: "Balance",
                          columnTenText: "Status",
                        ),
                        SalesOrderTableSingleRow(
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
                          columnFiveText: "14.12.23",
                          columnSixText: "Joe",
                          columnSevenText: "100",
                          columnEightText: "1200",
                          columnNineText: "700",
                          columnTenText: "Pending",
                        ),
                        SalesOrderTableSingleRow(
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
                          columnTwoText: "2",
                          columnThreeText: "3",
                          columnFourText: "01.10.23",
                          columnFiveText: "04.11.23",
                          columnSixText: "Joe",
                          columnSevenText: "1100",
                          columnEightText: "7800",
                          columnNineText: "4000",
                          columnTenText: "Pending",
                        ),
                        SalesOrderTableSingleRow(
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
                          columnTwoText: "3",
                          columnThreeText: "17",
                          columnFourText: "12.12.23",
                          columnFiveText: "14.12.23",
                          columnSixText: "Joe",
                          columnSevenText: "100",
                          columnEightText: "1200",
                          columnNineText: "700",
                          columnTenText: "Pending",
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
