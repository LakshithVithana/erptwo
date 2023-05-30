import 'package:erptwo/features/home/favorites/favorites.dart';
import 'package:erptwo/features/home/services/services.dart';
import 'package:erptwo/features/home/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors.dart';
import '../../core/services/auth_services.dart';
import '../../core/shared/widgets/custom_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthServices _auth = AuthServices();
  List<String> dropdownList = <String>['John Doe', 'Logout'];
  String dropdownValue = "John Doe";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          toolbarHeight: 60.0.h,
          backgroundColor: mainColor,
          // toolbarHeight: 30.0,
          // title: Padding(
          //   padding: const EdgeInsets.only(left: 20.0),
          //   child: SizedBox(
          //     height: 40.0.h,
          //     child: Image.asset("assets/images/erp_logo.png"),
          //   ),
          // ),
          // Text(
          //   "ERP Home",
          //   style: TextStyle(
          //       fontWeight: FontWeight.bold, color: white, fontSize: 30.0.sp),
          // ),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 8.0, 0.0, 0.0),
            child: Image.asset(
              "assets/images/logo_white_resized.png",
              height: 50.0.h,
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
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: DropdownButton<String>(
                iconEnabledColor: accentColor,
                dropdownColor: secondaryColor,
                value: dropdownValue,
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
                    dropdownValue = value!;
                  });
                  if (value == "Logout") {
                    await _auth.signOut();
                  }
                },
                items:
                    dropdownList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: CustomText(
                      text: value,
                      fontSize: 14.0.sp,
                      color: white,
                    ),
                  );
                }).toList(),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0.0, 8.0, 20.0, 8.0),
            //   child: TextButton(
            //     onPressed: () async {
            //       await _auth.signOut();
            //     },
            //     child: CustomText(
            //       text: "Logout",
            //       fontSize: 14.0.sp,
            //       color: white,
            //     ),
            //   ),
            // ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: accentColor,
            labelColor: accentColor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: const BoxDecoration(
              color: accentColor,
              borderRadius: BorderRadius.only(
                topLeft: (Radius.circular(5.0)),
                topRight: (Radius.circular(5.0)),
              ),
            ),
            tabs: [
              SizedBox(
                height: 35.0.h,
                width: 100.0.w,
                child: Center(
                  child: CustomText(
                    text: "Dashboard",
                    fontSize: 16.0.sp,
                    color: white,
                  ),
                ),
              ),
              SizedBox(
                height: 35.0.h,
                width: 100.0.w,
                child: Center(
                  child: CustomText(
                    text: "Favorites",
                    fontSize: 16.0.sp,
                    color: white,
                  ),
                ),
              ),
              SizedBox(
                height: 35.0.h,
                width: 100.0.w,
                child: Center(
                  child: CustomText(
                    text: "Services",
                    fontSize: 16.0.sp,
                    color: white,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Dashboard(),
            FavoritesPage(),
            Services(),
          ],
        ),
      ),
    );
  }
}
