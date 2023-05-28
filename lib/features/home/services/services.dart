import 'package:erptwo/core/constants/colors.dart';
import 'package:erptwo/features/accounts/accounts.dart';
import 'package:erptwo/features/home/services/widgets/single_service_tile_widget.dart';
import 'package:erptwo/features/transactions/transactions.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  final ScrollController allItemsHomeScrollController = ScrollController();
  // List<String> itemList = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: allItemsHomeScrollController,
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
                                          const AccountsPage()),
                                );
                              },
                              favoritePage: true,
                              iconName: Icons.groups,
                              title: "Accounts",
                              mainColor: accountsColor,
                              hoverColor: accountsHoverColor,
                            ),
                            const SizedBox(height: 20.0),
                            SingleServiceTileWidget(
                              isUnlocked: true,
                              onTap: () {},
                              favoritePage: true,
                              iconName: Icons.rule_sharp,
                              title: "Utilities",
                              mainColor: utilitiesColor,
                              hoverColor: utilitiesHoverColor,
                            ),
                            const SizedBox(height: 20.0),
                            SingleServiceTileWidget(
                              isUnlocked: true,
                              onTap: () {},
                              favoritePage: true,
                              iconName: Icons.attach_money,
                              title: "Finance",
                              mainColor: financeColor,
                              hoverColor: financeHoverColor,
                            ),
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TransactionsPage()),
                                );
                              },
                              favoritePage: true,
                              iconName: Icons.sync_alt,
                              title: "Transactions",
                              mainColor: transactionsColor,
                              hoverColor: transactionsHoverColor,
                            ),
                            const SizedBox(height: 20.0),
                            SingleServiceTileWidget(
                              isUnlocked: true,
                              onTap: () {},
                              favoritePage: true,
                              iconName: Icons.settings,
                              title: "Setup",
                              mainColor: setupColor,
                              hoverColor: setupHoverColor,
                            ),
                            const SizedBox(height: 20.0),
                            SingleServiceTileWidget(
                              isUnlocked: true,
                              onTap: () {},
                              favoritePage: true,
                              iconName: Icons.support_agent,
                              title: "CRM",
                              mainColor: crmColor,
                              hoverColor: crmHoverColor,
                            ),
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
                              iconName: Icons.description,
                              title: "Reports",
                              mainColor: reportsColor,
                              hoverColor: reportsHoverColor,
                            ),
                            const SizedBox(height: 20.0),
                            SingleServiceTileWidget(
                              isUnlocked: true,
                              onTap: () {},
                              favoritePage: true,
                              iconName: Icons.file_copy,
                              title: "Files",
                              mainColor: fileColor,
                              hoverColor: fileHoverColor,
                            ),
                            const SizedBox(height: 20.0),
                            SingleServiceTileWidget(
                              isUnlocked: false,
                              onTap: () {},
                              favoritePage: true,
                              iconName: Icons.precision_manufacturing,
                              title: "Production",
                              mainColor: productionColor,
                              hoverColor: productionHoverColor,
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
    );
  }
}

// hoverColor: outlineColor.withOpacity(0.3),
//       borderRadius: BorderRadius.circular(5.0),
