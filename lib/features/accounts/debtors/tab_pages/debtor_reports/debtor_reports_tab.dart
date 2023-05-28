import 'package:flutter/material.dart';

class DebtorReportsTab extends StatefulWidget {
  const DebtorReportsTab({super.key});

  @override
  State<DebtorReportsTab> createState() => _DebtorReportsTabState();
}

class _DebtorReportsTabState extends State<DebtorReportsTab> {
  PageController page = PageController();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Debtor Reports"),
    );
  }
}
