import 'package:ebook/app/data/book.dart';
import 'package:ebook/app/routes/app_pages.dart';
import 'package:ebook/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget widthcirclebox(String $label) {
  return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: maintheme.themecl, borderRadius: BorderRadius.circular(20)),
      child: ListTile(title: Text($label), selectedColor: maintheme.groundcl));
}

Widget headeritem(IconData $icon, String $label) {
  return Row(
    children: <Widget>[
      Icon(
        $icon,
        color: maintheme.whitetheme,
      ),
      const SizedBox(width: 5),
      Text(
        $label,
        style: TextStyle(color: maintheme.whitetheme),
      )
    ],
  );
}

Widget bodybookitem(Book $book) {
  return InkWell(
    onTap: () => {Get.toNamed(Routes.BOOKSHEET, arguments: $book)},
    onLongPress: () => {
      Get.bottomSheet(
        homebookedit(),
        isScrollControlled: false,
      )
    },
    child: Container(
      constraints: BoxConstraints(maxWidth: 600),
      margin: EdgeInsets.all(20),
      height: 400,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/banner.jpg"), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
          color: Colors.yellow),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  color: Color(0xAAffffff),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: ListTile(
                isThreeLine: true,
                contentPadding: EdgeInsets.all(5),
                title: Text($book.name),
                subtitle: Text($book.description),
                //trailing: Icon(Icons.list_rounded),
              ))
        ],
      ),
    ),
  );
}

Widget homebookedit() {
  bool isInterst = false;
  return Card(
    child: ListView(
      children: <Widget>[
        ListTile(
          title: Text("No Interst"),
          trailing: Checkbox(
              value: isInterst, onChanged: (isInterst) => {print("check")}),
        ),
        const Divider(),
        ListTile(
          title: Text("Nothing"),
        )
      ],
    ),
  );
}
