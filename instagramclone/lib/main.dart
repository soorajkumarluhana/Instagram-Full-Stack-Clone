import 'package:flutter/material.dart';
import 'package:instagramclone/Responsive/mobileScreenLayout.dart';
import 'package:instagramclone/Responsive/responsive_layout_screen.dart';
import 'package:instagramclone/Responsive/webScreenLayout.dart';
import 'package:instagramclone/utilis/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram Clone",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: ResponsiveLayout(webScreenLayout: WebScreenLayout(), mobileScreenLayout: MobileScreenLayout()),
    );
  }
}