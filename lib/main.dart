import 'package:ebook/app/data/book.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      //theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: "Elimos_BookStore",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
