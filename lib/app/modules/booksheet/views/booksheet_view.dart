import 'package:ebook/app/data/book.dart';
import 'package:ebook/widget/body.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/booksheet_controller.dart';

class BooksheetView extends GetView<BooksheetController> {
  @override
  Widget build(BuildContext context) {
    Book book = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(book.name),
        backgroundColor: Color(0xff000000),
        shadowColor: Color(0x00ffffff),
      ),
      body: booksheetview(context, book),
    );
  }
}
