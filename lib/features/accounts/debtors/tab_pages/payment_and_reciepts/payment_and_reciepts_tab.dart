import 'package:erptwo/core/constants/colors.dart';
import 'package:erptwo/core/shared/widgets/custom_text.dart';
import 'package:erptwo/features/accounts/debtors/tab_pages/payment_and_reciepts/left_side_menu_pages/sales_orders/sales_orders_page.dart';
import 'package:erptwo/features/accounts/debtors/tab_pages/payment_and_reciepts/left_side_menu_pages/transactions/transaction_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentAndRecieptsTab extends StatefulWidget {
  const PaymentAndRecieptsTab({super.key, this.appBarHeight});
  final double? appBarHeight;

  @override
  State<PaymentAndRecieptsTab> createState() => _PaymentAndRecieptsTabState();
}

class _PaymentAndRecieptsTabState extends State<PaymentAndRecieptsTab> {
  PageController pageController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.height - widget.appBarHeight!,
              color: accountsColor.withOpacity(0.1),
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {
                      pageController.animateToPage(0,
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.bounceInOut);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * (2 / 11),
                      height: 40.0.h,
                      color: pageIndex == 0
                          ? accountsColor
                          : accountsColor.withOpacity(0.3),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                          child: CustomText(
                            text: "Transactions",
                            fontSize: 16.0.sp,
                            color: white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      pageController.animateToPage(1,
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.bounceInOut);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * (2 / 11),
                      height: 40.0.h,
                      color: pageIndex == 1
                          ? accountsColor
                          : accountsColor.withOpacity(0.3),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                          child: CustomText(
                            text: "Sales Orders",
                            fontSize: 16.0.sp,
                            color: white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: SizedBox(
              height: MediaQuery.of(context).size.height - widget.appBarHeight!,
              child: PageView(
                pageSnapping: true,
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                  print(pageIndex);
                },
                children: [
                  Container(
                    child: const TransactionsLeftSideMenuPage(),
                  ),
                  Container(
                    child: const SalesOrdersLeftSideMenuPage(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
