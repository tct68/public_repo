import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task3/app/configs/constants.dart';
import 'package:task3/app/modules/home/bindings/home_binding.dart';
import 'package:task3/app/modules/home/views/home_view.dart';
import 'package:task3/app/modules/wallet/controllers/wallet_controller.dart';
import 'package:task3/app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _init();
  runApp(const MainApp());
}

void _init() {
  Get.put(WalletController());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var baseTheme = ThemeData(brightness: Brightness.dark);
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: HomeBinding(),
        getPages: AppPages.routes,
        theme: ThemeData(
            scaffoldBackgroundColor: mainColor,
            textTheme: GoogleFonts.ralewayTextTheme(baseTheme.textTheme),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                backgroundColor: mainColor,
                elevation: 0,
                showSelectedLabels: false),
            appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: lightMainColor),
                backgroundColor: mainColor,
                titleTextStyle: TextStyle(color: lightMainColor))),
        home: const HomeView());
  }
}
