import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:init_project/app/modules/home/views/my_themes.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
    ),
  );
}
