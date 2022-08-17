import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaapp/app/modules/home/controllers/home_controller.dart';
import 'package:mediaapp/app/modules/personal_post/views/personal_post_view.dart';
import 'package:mediaapp/app/routes/app_pages.dart';

import 'drawer_header.dart';
import 'drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          CustomDrawerHeader(),
          Divider(),
          GestureDetector(
              onTap: () {
                Get.toNamed(Routes.PERSONAL_POST);
              },
              child: DrawerItem(icon: Icons.person, label: "Profile")),
          DrawerItem(icon: Icons.list_alt_outlined, label: "Lists"),
          DrawerItem(icon: Icons.chat_bubble_outline, label: "Topics"),
          DrawerItem(icon: Icons.bookmark_border, label: "Bookmarks"),
          DrawerItem(icon: Icons.theater_comedy_rounded, label: "Moments"),
          Divider(),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Settings and privacy"),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Help Center"),
          ),
        ],
      ),
    );
  }
}
