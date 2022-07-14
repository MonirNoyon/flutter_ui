import 'package:flutter/material.dart';
import 'package:flutter_ui_design/view-model/navbar_controller.dart';
import 'package:flutter_ui_design/view/Dairy/my_dairy.dart';
import 'package:flutter_ui_design/view/Furniture/furniture_home.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(BottomNavBarController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black87
          )
        ),
      ),
      getPages:[
        // GetPage(name: "/", page: ()=> const MyDiary()),
        GetPage(name: "/", page: ()=> const FurnitureHome()),
      ],
    );
  }
}
