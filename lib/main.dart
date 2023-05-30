import 'package:erptwo/core/constants/colors.dart';
import 'package:erptwo/core/models/user_model.dart';
import 'package:erptwo/core/services/auth_services.dart';
import 'package:erptwo/core/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1440, 734),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              listTileTheme: ListTileTheme.of(context).copyWith(
                contentPadding: const EdgeInsets.all(0),
                dense: true,
              ),
              textTheme: GoogleFonts.interTextTheme(),
              colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
              useMaterial3: true,
            ),
            home: StreamProvider<ERPUser?>.value(
              value: AuthServices().user,
              initialData: null,
              child: const Wrapper(),
            ),
          );
        });
  }
}
