import 'package:erptwo/features/home/services/widgets/single_service_tile_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../accounts/debtors/debtors_page.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<String> dropdownList = <String>['John Doe', 'Logout'];
  String dropdownValue = "John Doe";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SingleServiceTileWidget(
                              isUnlocked: true,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DebtorsPage()),
                                );
                              },
                              favoritePage: true,
                              iconName: Icons.group,
                              title: "Debtors",
                              mainColor: accountsColor,
                              hoverColor: accountsHoverColor,
                            ),
                            const SizedBox(height: 20.0),
                            SingleServiceTileWidget(
                              isUnlocked: true,
                              onTap: () {},
                              favoritePage: true,
                              iconName: Icons.contacts,
                              title: "Staff",
                              mainColor: setupColor,
                              hoverColor: setupHoverColor,
                            ),
                            const SizedBox(height: 20.0),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SingleServiceTileWidget(
                              isUnlocked: true,
                              onTap: () {},
                              favoritePage: true,
                              iconName: Icons.contacts,
                              title: "Document Manager",
                              mainColor: utilitiesColor,
                              hoverColor: utilitiesHoverColor,
                            ),
                            const SizedBox(height: 20.0),
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
    );
  }
}
