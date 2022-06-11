import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/Responsive/mobileScreenLayout.dart';
import 'package:instagramclone/Responsive/responsive_layout_screen.dart';
import 'package:instagramclone/Responsive/webScreenLayout.dart';
import 'package:instagramclone/utilis/colors.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   if(kIsWeb){
    await Firebase.initializeApp(
     options: const FirebaseOptions(apiKey: "AIzaSyDjelRysK-KIhfRXAznZt2GVwu1AnPnqaE", appId: "1:167707356759:web:db3c03d117769c57d7fd12", messagingSenderId:  "167707356759", projectId: "instagramclone-f03d2", storageBucket: "instagramclone-f03d2.appspot.com")
    );
   }else{
    await Firebase.initializeApp();
   }
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
      home: ResponsiveLayout(
          webScreenLayout: WebScreenLayout(),
          mobileScreenLayout: MobileScreenLayout()),
    );
  }
}
