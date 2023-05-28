import 'package:erptwo/features/home/services/widgets/single_service_tile_widget.dart';
import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../core/services/auth_services.dart';
import '../../core/shared/widgets/custom_text.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  final AuthServices _auth = AuthServices();
  List<String> dropdownList = <String>['John Doe', 'Logout'];
  String dropdownValue = "John Doe";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 246, 239, 255),
        appBar: AppBar(
          title: const CustomText(
            text: "Transactions",
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
          backgroundColor: transactionsMainColor,
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
            // Padding(
            //   padding: const EdgeInsets.only(right: 20.0),
            //   child: DropdownButton<String>(
            //     iconEnabledColor: accentColor,
            //     dropdownColor: secondaryColor,
            //     value: dropdownValue,
            //     icon: const Icon(Icons.arrow_downward),
            //     elevation: 16,
            //     style: const TextStyle(color: white),
            //     underline: Container(
            //       height: 2,
            //       // color: Colors.deepPurpleAccent,
            //     ),
            //     onChanged: (String? value) async {
            //       // This is called when the user selects an item.
            //       setState(() {
            //         dropdownValue = value!;
            //       });
            //       if (value == "Logout") {
            //         await _auth.signOut();
            //       }
            //     },
            //     items:
            //         dropdownList.map<DropdownMenuItem<String>>((String value) {
            //       return DropdownMenuItem<String>(
            //         value: value,
            //         child: CustomText(
            //           text: value,
            //           fontSize: 14.0.sp,
            //           color: white,
            //         ),
            //       );
            //     }).toList(),
            //   ),
            // ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: MediaQuery.of(context).size.height / 1.5,
                    opacity: const AlwaysStoppedAnimation(0.4),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SingleServiceTileWidget(
                                  isUnlocked: true,
                                  onTap: () {},
                                  favoritePage: true,
                                  iconName: Icons.group,
                                  title: "Work Order",
                                  mainColor: transactionsColor,
                                  hoverColor: transactionsHoverColor,
                                ),
                                const SizedBox(height: 20.0),
                                SingleServiceTileWidget(
                                  isUnlocked: true,
                                  onTap: () {},
                                  favoritePage: true,
                                  iconName: Icons.category,
                                  title: "Inward Good Receipt",
                                  mainColor: transactionsColor,
                                  hoverColor: transactionsHoverColor,
                                ),
                                const SizedBox(height: 20.0),
                                SingleServiceTileWidget(
                                  isUnlocked: false,
                                  onTap: () {},
                                  favoritePage: true,
                                  iconName: Icons.segment,
                                  title: "Preorders",
                                  mainColor: transactionsColor,
                                  hoverColor: transactionsHoverColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SingleServiceTileWidget(
                                  isUnlocked: true,
                                  onTap: () {},
                                  favoritePage: true,
                                  iconName: Icons.contacts,
                                  title: "Sales Order",
                                  mainColor: transactionsColor,
                                  hoverColor: transactionsHoverColor,
                                ),
                                const SizedBox(height: 20.0),
                                SingleServiceTileWidget(
                                  isUnlocked: true,
                                  onTap: () {},
                                  favoritePage: true,
                                  iconName: Icons.no_accounts,
                                  title: "Debtor Adjustments",
                                  mainColor: transactionsColor,
                                  hoverColor: transactionsHoverColor,
                                ),
                                const SizedBox(height: 20.0),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SingleServiceTileWidget(
                                  isUnlocked: true,
                                  onTap: () {},
                                  favoritePage: true,
                                  iconName: Icons.import_contacts,
                                  title: "Purchase Order",
                                  mainColor: transactionsColor,
                                  hoverColor: transactionsHoverColor,
                                ),
                                const SizedBox(height: 20.0),
                                SingleServiceTileWidget(
                                  isUnlocked: true,
                                  onTap: () {},
                                  favoritePage: true,
                                  iconName: Icons.receipt_long,
                                  title: "Invoice Entry",
                                  mainColor: transactionsColor,
                                  hoverColor: transactionsHoverColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
