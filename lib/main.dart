import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_ui/Login/login_page.dart';
import 'package:responsive_ui/Responsive/desktop_scaffold.dart';
import 'package:responsive_ui/Responsive/mobile_scaffold.dart';
import 'package:responsive_ui/Responsive/responsive_layout.dart';
import 'package:responsive_ui/Responsive/tablets_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Responsive Ui',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
        ),
        home: ResponsiveLayout(
          mobileScaffold: const MobileScaffold(),
          tabletScaffold: const TabletsScaffold(),
          desktopScaffold: const DesktopScaffold(),
        ),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(393, 852),
    );
  }
}
