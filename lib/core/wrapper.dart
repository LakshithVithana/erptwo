import 'package:erptwo/core/models/user_model.dart';
import 'package:erptwo/features/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../features/home/home_page.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<ERPUser?>(context);

    if (user == null) {
      return const LoginPage();
    } else {
      return const HomePage();
    }
  }
}
