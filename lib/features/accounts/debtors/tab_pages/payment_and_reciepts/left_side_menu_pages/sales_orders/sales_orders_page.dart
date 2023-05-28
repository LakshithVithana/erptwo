import 'package:flutter/material.dart';

class SalesOrdersLeftSideMenuPage extends StatefulWidget {
  const SalesOrdersLeftSideMenuPage({super.key});

  @override
  State<SalesOrdersLeftSideMenuPage> createState() =>
      _SalesOrdersLeftSideMenuPageState();
}

class _SalesOrdersLeftSideMenuPageState
    extends State<SalesOrdersLeftSideMenuPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Sales Orders"),
    );
  }
}
