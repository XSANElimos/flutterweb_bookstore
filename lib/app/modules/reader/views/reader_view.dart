import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reader_controller.dart';

class ReaderView extends GetView<ReaderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReaderView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ReaderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
