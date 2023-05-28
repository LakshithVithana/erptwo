import 'package:erptwo/core/constants/colors.dart';
import 'package:erptwo/features/accounts/debtors/tab_pages/debtor_reports/debtor_reports_tab.dart';
import 'package:erptwo/features/accounts/debtors/tab_pages/payment_and_reciepts/payment_and_reciepts_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/shared/widgets/custom_text.dart';

class DebtorsPage extends StatefulWidget {
  const DebtorsPage({super.key});

  @override
  State<DebtorsPage> createState() => _DebtorsPageState();
}

class _DebtorsPageState extends State<DebtorsPage> {
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: const CustomText(
        text: "Debtors",
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
      backgroundColor: accountMainColor,
      centerTitle: false,
      actions: [
        // Padding(
        //   padding: const EdgeInsets.only(right: 20.0),
        //   child: TextButton(
        //     onPressed: () {},
        //     child: CustomText(
        //       text: "New +",
        //       fontSize: 14.0.sp,
        //       color: accentColor,
        //     ),
        //   ),
        // ),
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
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: TabBar(
              isScrollable: true,
              indicatorColor: accountsColor,
              labelColor: accountsColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: const BoxDecoration(
                color: accountsColor,
                borderRadius: BorderRadius.only(
                  topLeft: (Radius.circular(5.0)),
                  topRight: (Radius.circular(5.0)),
                ),
              ),
              tabs: [
                SizedBox(
                  height: 35.0.h,
                  child: Center(
                    child: CustomText(
                      text: "Payment & Reciepts",
                      fontSize: 16.0.sp,
                      color: white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.0.h,
                  child: Center(
                    child: CustomText(
                      text: "Debtor Reports",
                      fontSize: 16.0.sp,
                      color: white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBar,
        body: TabBarView(
          children: [
            PaymentAndRecieptsTab(appBarHeight: appBar.preferredSize.height),
            const DebtorReportsTab(),
          ],
        ),
      ),
    );
  }
}
