import 'package:erptwo/features/home/dashboard/widgets/custom_sf_pie_chart.dart';
import 'package:erptwo/features/home/dashboard/widgets/display_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../core/constants/colors.dart';
import '../../../core/shared/widgets/custom_text.dart';

import 'data/models/cartesian_data_model.dart';
import 'data/models/pie_data_model.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final ScrollController dashboardController = ScrollController();
  List<String> filterList = <String>['Customer View', 'Project Overview'];
  String? filter = "Customer View";

  static List<LineSeries<SalesData, num>> getDefaultData() {
    final List<SalesData> chartData = <SalesData>[
      SalesData(DateTime(2005, 0, 1), 'India', 1.5, 21, 28, 680, 760),
      SalesData(DateTime(2006, 0, 1), 'China', 2.2, 24, 44, 550, 880),
      SalesData(DateTime(2007, 0, 1), 'USA', 3.32, 36, 48, 440, 788),
      SalesData(DateTime(2008, 0, 1), 'Japan', 4.56, 38, 50, 350, 560),
      SalesData(DateTime(2009, 0, 1), 'Russia', 5.87, 54, 66, 444, 566),
      SalesData(DateTime(2010, 0, 1), 'France', 6.8, 57, 78, 780, 650),
      SalesData(DateTime(2011, 0, 1), 'Germany', 8.5, 70, 84, 450, 800)
    ];
    return <LineSeries<SalesData, num>>[
      LineSeries<SalesData, num>(
          enableTooltip: true,
          dataSource: chartData,
          xValueMapper: (SalesData sales, _) => sales.value1,
          yValueMapper: (SalesData sales, _) => sales.value2,
          width: 2,
          markerSettings: const MarkerSettings(
              isVisible: true,
              height: 4,
              width: 4,
              shape: DataMarkerType.circle,
              borderWidth: 3,
              borderColor: Colors.red),
          dataLabelSettings: const DataLabelSettings(
              labelPosition: ChartDataLabelPosition.inside)),
      LineSeries<SalesData, num>(
          enableTooltip: true,
          dataSource: chartData,
          width: 2,
          xValueMapper: (SalesData sales, _) => sales.value1,
          yValueMapper: (SalesData sales, _) => sales.value3,
          markerSettings: const MarkerSettings(
              isVisible: true,
              height: 4,
              width: 4,
              shape: DataMarkerType.circle,
              borderWidth: 3,
              borderColor: Colors.black),
          dataLabelSettings: const DataLabelSettings(
              labelPosition: ChartDataLabelPosition.inside))
    ];
  }

  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: dashboardController,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/images/m.png",
                height: MediaQuery.of(context).size.height / 1.5,
                opacity: const AlwaysStoppedAnimation(0.1),
                filterQuality: FilterQuality.high,
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
                // const SizedBox(height: 5.0),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                // left 4 snapshots ----------------------------
                                const Row(
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
                                const SizedBox(height: 10.0),
                                const Row(
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
                                const SizedBox(height: 10.0),
                                // line graph ----------------------------------
                                PhysicalModel(
                                  color: white,
                                  borderRadius: BorderRadius.circular(5.0),
                                  elevation: 8.0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: SingleChildScrollView(
                                      child: SfCartesianChart(
                                        title: ChartTitle(
                                            text: 'Sales Data',
                                            textStyle: TextStyle(
                                                fontSize: 16.0.sp,
                                                fontWeight: FontWeight.bold)),
                                        legend: Legend(isVisible: true),
                                        series: getDefaultData(),
                                        tooltipBehavior: _tooltipBehavior,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // first pie chart----------------------------------------
                                    Expanded(
                                      flex: 1,
                                      child: PhysicalModel(
                                        color: white,
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        elevation: 8.0,
                                        child: ConstrainedBox(
                                          constraints: BoxConstraints(
                                              minHeight: 300.0.h,
                                              maxHeight: 380.0.h),
                                          // height: 370.0.h,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  CustomText(
                                                    text:
                                                        "Improving Customer Service",
                                                    fontSize: 16.0.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  // const SizedBox(height: 10.0),
                                                  CustomSfPieChart(
                                                    isFirst: true,
                                                    pieData: [
                                                      PieData('Jan', 40, "40%"),
                                                      PieData('Feb', 30, "30%"),
                                                      PieData('Mar', 10, "10%"),
                                                      PieData('Apr', 15, "15%"),
                                                      PieData('May', 5, "5%"),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20.0),
                                    // second pie chart --------------------------------------
                                    Expanded(
                                      flex: 1,
                                      child: PhysicalModel(
                                        color: white,
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        elevation: 8.0,
                                        child: ConstrainedBox(
                                          constraints: BoxConstraints(
                                              minHeight: 300.0.h,
                                              maxHeight: 380.0.h),
                                          // height: 370.0.h,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  CustomText(
                                                    text:
                                                        "Sales Order - Open Order",
                                                    fontSize: 16.0.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  // SizedBox(height: 20.0),
                                                  // CustomPieChart(
                                                  //   dataMap: {
                                                  //     "Presale": 53.547524,
                                                  //     "Liquidity": 26.452477,
                                                  //     "Founders, Influencers & Partners":
                                                  //         14.999999,
                                                  //     "CEX Liquidity": 5,
                                                  //   },
                                                  //   colorList: [
                                                  //     Color(0xff812490),
                                                  //     Color(0xffD67012),
                                                  //     Color(0xFF12D6AB),
                                                  //     Color(0xff007A8B),
                                                  //     // Color(0xFFF548F2),
                                                  //   ],
                                                  // ),
                                                  CustomSfPieChart(
                                                    isFirst: false,
                                                    pieData: [
                                                      PieData('Enter Orders',
                                                          43, "43%"),
                                                      PieData('Pre-Sales', 27,
                                                          "27%"),
                                                      PieData('In Warehouse', 5,
                                                          "5%"),
                                                      PieData('Ship Confirmed',
                                                          20, "20%"),
                                                      PieData('Pick Confirmed',
                                                          5, "5%"),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20.0),
                                    // callander ---------------------------------------------
                                    Expanded(
                                      flex: 1,
                                      child: PhysicalModel(
                                        color: white,
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        elevation: 8.0,
                                        child: ConstrainedBox(
                                          constraints: BoxConstraints(
                                              minHeight: 300.0.h,
                                              maxHeight: 380.0.h),
                                          // height: 370.0.h,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0,
                                                vertical: 12.0),
                                            child: SingleChildScrollView(
                                              child: TableCalendar(
                                                startingDayOfWeek:
                                                    StartingDayOfWeek.monday,
                                                headerStyle: const HeaderStyle(
                                                    formatButtonVisible: false,
                                                    titleCentered: true),
                                                firstDay:
                                                    DateTime.utc(2010, 10, 16),
                                                lastDay:
                                                    DateTime.utc(2030, 3, 14),
                                                focusedDay: DateTime.now(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
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
