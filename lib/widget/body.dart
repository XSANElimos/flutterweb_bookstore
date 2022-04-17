import 'package:ebook/app/data/book.dart';
import 'package:ebook/styles/colors.dart';
import 'package:ebook/widget/items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

Widget headerlist() {
  return Container(
    height: 500,
    child: Column(
      children: <Widget>[
        const SizedBox(height: 5), //top margin
        Row(
          children: <Widget>[
            // top buttom list
            const SizedBox(width: 10), //left margin
            MaterialButton(
                child: Text(
                  "Elimos BookStore",
                  style: TextStyle(color: maintheme.whitetheme, fontSize: 20),
                ),
                onPressed: () {
                  Get.snackbar("YOU FOUND ME!", "AHAHA",
                      duration: Duration(seconds: 3),
                      maxWidth: 500,
                      isDismissible: true,
                      margin: EdgeInsets.all(20));
                }),
            const Spacer(),
            MaterialButton(
                child: headeritem(Icons.home_outlined, "HOME"),
                onPressed: () => {}),
          ],
        )
      ],
    ),
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/banner.jpg"), fit: BoxFit.cover)),
  );
}

Widget scrollbookhome(context) {
  Book book1 = Book("book1");
  book1.image_path = bookmap['book1']?['image_path'];
  book1.description = bookmap['book1']?['description'];
  if (MediaQuery.of(context).size.width > 1000) {
    return homeDesktopLayout(book1);
  } else {
    return homeMobileLaout(book1);
  }
}

Widget homeMobileLaout(Book $book) {
  return CustomScrollView(
    scrollDirection: Axis.vertical,
    slivers: <Widget>[
      SliverList(
          delegate: SliverChildListDelegate([
        headerlist(),
        infobox(),
        bodybookitem($book),
        bodybookitem($book),
        bodybookitem($book),
        footer(),
      ]))
    ],
  );
}

Widget homeDesktopLayout(Book $book) {
  return CustomScrollView(
    scrollDirection: Axis.vertical,
    slivers: <Widget>[
      SliverList(
          delegate: SliverChildListDelegate([
        headerlist(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Wrap(
                children: [
                  bodybookitem($book),
                  bodybookitem($book),
                  bodybookitem($book),
                  bodybookitem($book),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    infobox(),
                  ],
                ))
          ],
        ),
        footer(),
      ]))
    ],
  );
}

Widget infobox() {
  return Container(
    height: 400,
    constraints: BoxConstraints(maxHeight: 500),
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: maintheme.groundcl),
    child: Center(
      child: Text("Welcome to my website"),
    ),
  );
}

Widget booksheetview(context, Book $book) {
  if (MediaQuery.of(context).size.width > 1000) {
    return bookDesktopLayout($book);
  } else {
    return bookMobileLayout($book);
  }
}

Widget bookDesktopLayout(Book $book) {
  return Row(
    children: <Widget>[
      Text("data"),
      Expanded(
        flex: 3,
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              color: Colors.amberAccent,
            )
          ],
        ),
      ),
      Expanded(
        flex: 1,
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            )
          ],
        ),
      )
    ],
  );
}

Widget bookMobileLayout(Book $book) {
  return Column(
    children: <Widget>[Text("sd")],
  );
}

Widget footer() {
  return Center(
    child: Column(
      children: <Widget>[
        Text("Power by flutter | Elimos"),
        Text("ICPbackupID xxxx")
      ],
    ),
  );
}
