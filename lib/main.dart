import 'package:flutter/material.dart';
import 'package:food_apps/pages/food/custom_scrollable_page.dart';
// import 'package:food_apps/pages/food/popular_food_details.dart';
// import 'package:food_apps/pages/home/main_food_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'helper/dependancies.dart'as dep;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blue,
      ),
      home: RecommendedFood(),
    );
  }
}

