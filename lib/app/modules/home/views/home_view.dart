import 'package:ebook/app/data/book.dart';
import 'package:ebook/styles/colors.dart';
import 'package:ebook/widget/body.dart';
import 'package:ebook/widget/items.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: maintheme.frontcl,
        /*drawer: Drawer(
          backgroundColor: maintheme.frontcl,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  child: Container(
                child: Text("data"),
              )),
              widthcirclebox("HOME"),
              widthcirclebox("BOOKSHEET"),
            ],
          )),
      */
        body: scrollbookhome(context));
  }
}
