import 'package:erptwo/features/home/dashboard/widgets/custom_pie_chart.dart';
import 'package:erptwo/features/home/dashboard/widgets/display_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../core/constants/colors.dart';
import '../../../core/shared/widgets/custom_text.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final ScrollController dashboardController = ScrollController();
  List<String> filterList = <String>['Customer View', 'Project Overview'];
  String? filter = "Customer View";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: dashboardController,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/images/m.png",
                height: MediaQuery.of(context).size.height / 1.5,
                opacity: const AlwaysStoppedAnimation(0.1),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomText(
                      text: "From :",
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                    const SizedBox(width: 5.0),
                    Container(
                      width: 150.0.w,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "01.05.2023",
                              fontSize: 16.0.sp,
                              color: secondaryColor,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.calendar_month,
                                color: accentColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    CustomText(
                      text: "To :",
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                    const SizedBox(width: 5.0),
                    Container(
                      width: 150.0.w,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "01.06.2023",
                              fontSize: 16.0.sp,
                              color: secondaryColor,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.calendar_month,
                                color: accentColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    const Icon(
                      Icons.filter_list,
                      color: secondaryColor,
                    ),
                    const SizedBox(width: 5.0),
                    CustomText(
                      text: "Dashboard Type :",
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                    const SizedBox(width: 5.0),
                    DropdownButton<String>(
                      iconEnabledColor: accentColor,
                      dropdownColor: secondaryColor,
                      value: filter,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: white),
                      underline: Container(
                        height: 2,
                        // color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) async {
                        // This is called when the user selects an item.
                        setState(() {
                          filter = value!;
                        });
                      },
                      items: filterList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: CustomText(
                            text: value,
                            fontSize: 14.0.sp,
                            color: accentColor,
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                Container(
                  height: 1.0,
                  color: deviderColor,
                ),
                const SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: DisplayTile(
                                    color: Colors.greenAccent,
                                    mainText: "34",
                                    subText: "ORDERS READY TO SEND",
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Expanded(
                                  flex: 1,
                                  child: DisplayTile(
                                    color: Colors.redAccent,
                                    mainText: "2",
                                    subText: "LATE ORDERS",
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: DisplayTile(
                                    color: Colors.greenAccent,
                                    mainText: "6.5M",
                                    subText: "TOTAL CREDIT EXTENDED",
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Expanded(
                                  flex: 1,
                                  child: DisplayTile(
                                    color: Colors.redAccent,
                                    mainText: "1.1M",
                                    subText: "OVERDUE ACCT. RECIEV.",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        flex: 1,
                        child: PhysicalModel(
                          color: white,
                          borderRadius: BorderRadius.circular(5.0),
                          elevation: 8.0,
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                CustomText(
                                  text: "Improving Customer Service",
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(height: 20.0),
                                CustomPieChart(
                                  dataMap: {
                                    "Increases Sales": 60,
                                    "Increases Customer No": 20,
                                    "Little or No Impact": 15,
                                    "Raises Labour Costs": 5,
                                  },
                                  colorList: [
                                    Color.fromARGB(255, 218, 34, 34),
                                    Color.fromARGB(255, 36, 237, 251),
                                    Color.fromARGB(255, 46, 218, 34),
                                    Color.fromARGB(255, 255, 197, 80),
                                    // Color(0xFFF548F2),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        flex: 1,
                        child: PhysicalModel(
                          color: white,
                          borderRadius: BorderRadius.circular(5.0),
                          elevation: 8.0,
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                CustomText(
                                  text: "Sales Order - Open Order",
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(height: 20.0),
                                CustomPieChart(
                                  dataMap: {
                                    "Presale": 53.547524,
                                    "Liquidity": 26.452477,
                                    "Founders, Influencers & Partners":
                                        14.999999,
                                    "CEX Liquidity": 5,
                                  },
                                  colorList: [
                                    Color(0xff812490),
                                    Color(0xffD67012),
                                    Color(0xFF12D6AB),
                                    Color(0xff007A8B),
                                    // Color(0xFFF548F2),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        flex: 1,
                        child: PhysicalModel(
                          color: white,
                          borderRadius: BorderRadius.circular(5.0),
                          elevation: 8.0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TableCalendar(
                              startingDayOfWeek: StartingDayOfWeek.monday,
                              headerStyle: const HeaderStyle(
                                  formatButtonVisible: false,
                                  titleCentered: true),
                              firstDay: DateTime.utc(2010, 10, 16),
                              lastDay: DateTime.utc(2030, 3, 14),
                              focusedDay: DateTime.now(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Row(
                //   children: [
                //     const SizedBox(width: 40.0),
                //     Column(
                //       children: [
                //         SizedBox(
                //           width: 400.0.w,
                //           child: TableCalendar(
                //             firstDay: DateTime.utc(2010, 10, 16),
                //             lastDay: DateTime.utc(2030, 3, 14),
                //             focusedDay: DateTime.now(),
                //           ),
                //         ),
                //         const SizedBox(height: 10.0),
                //       ],
                //     ),
                //   ],
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
